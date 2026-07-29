import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EnvironmentalAirPollutionCanonicalLaneLean.EmissionSourcePackage
import HautevilleHouse.EnvironmentalAirPollutionCanonicalLaneLean.AtmosphericChemistryPackage
import HautevilleHouse.EnvironmentalAirPollutionCanonicalLaneLean.AirPollutionTransportPackage
import HautevilleHouse.EnvironmentalAirPollutionCanonicalLaneLean.HealthImpactPackage

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.pollutant ≠ ""

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    exact A.object.nonEmptyPollutant

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  by
    exact A.gateWitness

def ConstrainedEnvironmentalAirPollutionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem environmental_air_pollution_endgame (A : AdmissibleClass) : ConstrainedEnvironmentalAirPollutionClosure A :=
  by
    exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse