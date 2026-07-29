import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

structure AirPollutionAdmittedObject where
  region : Type
  pollutantConcentration : region → ℝ
  emissionRate : region → ℝ
  meteorology : Type
  conclusion : Prop

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse