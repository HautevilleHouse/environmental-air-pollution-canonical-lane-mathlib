import HautevilleHouse.EnvironmentalAirPollutionCanonicalLaneLean.EnvironmentalAirPollutionAdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

open HautevilleHouse.EnvironmentalAirPollutionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedObjectConclusion A.object

theorem bridgeFromAdmissibleClass (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gateFromAdmissibleClass (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse