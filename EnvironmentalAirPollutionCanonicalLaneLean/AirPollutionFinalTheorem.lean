import HautevilleHouse.EnvironmentalAirPollutionCanonicalLaneLean.AirPollutionBridgeLemmas

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

def ConstrainedAirPollutionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_air_pollution_endgame (A : AdmissibleClass) :
    ConstrainedAirPollutionClosure A := by
  exact And.intro (bridgeFromAdmissibleClass A) (gateFromAdmissibleClass A)

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse