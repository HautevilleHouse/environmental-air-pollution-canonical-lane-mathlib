import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

def ConstrainedAirPollutionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_air_pollution_endgame (A : AdmissibleClass) :
    ConstrainedAirPollutionClosure A := by
  have hBridge : bridgeClosed A := A.endpointSatisfied
  have hGate : gateClosed A := A.remainderRecorded
  exact And.intro hBridge hGate

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse