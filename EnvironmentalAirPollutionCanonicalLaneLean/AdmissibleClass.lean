import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

structure PollutionAdmittedObject where
  source : Type
  concentration : Type
  exposureModel : Type
  healthEndpointAssured : Prop
  conclusion : healthEndpointAssured

structure AdmissibleClass where
  object : PollutionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def PollutionWitnessClosed (O : PollutionAdmittedObject) : Prop :=
  O.healthEndpointAssured

def admittedClosure (A : AdmissibleClass) : Prop :=
  PollutionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse