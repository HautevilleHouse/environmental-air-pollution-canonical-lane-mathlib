import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

structure HealthImpactPackage where
  pollutant : String
  concentration : Float
  exposurePopulation : Nat
  doseResponse : String
  healthEndpoint : String

structure HealthImpactEvidence (H : HealthImpactPackage) where
  concentrationNonnegative : H.concentration ≥ 0
  populationPositive : H.exposurePopulation > 0

def HealthImpactClosed (H : HealthImpactPackage) : Prop :=
  H.concentration ≥ 0 ∧ H.exposurePopulation > 0

theorem health_impact_closed_from_evidence (H : HealthImpactPackage) (Ev : HealthImpactEvidence H) : HealthImpactClosed H :=
  by
    exact And.intro Ev.concentrationNonnegative Ev.populationPositive

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse