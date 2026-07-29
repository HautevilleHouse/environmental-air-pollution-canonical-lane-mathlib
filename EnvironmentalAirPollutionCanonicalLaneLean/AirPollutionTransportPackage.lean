import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

structure AirPollutionTransportPackage where
  windField : String
  stabilityClass : String
  mixingHeight : Float
  depositionVelocity : Float
  advectionScheme : String

structure AirPollutionTransportEvidence (T : AirPollutionTransportPackage) where
  mixingHeightPositive : T.mixingHeight > 0
  depositionPositive : T.depositionVelocity > 0

def AirPollutionTransportClosed (T : AirPollutionTransportPackage) : Prop :=
  T.mixingHeight > 0 ∧ T.depositionVelocity > 0

theorem air_pollution_transport_closed_from_evidence (T : AirPollutionTransportPackage) (Ev : AirPollutionTransportEvidence T) : AirPollutionTransportClosed T :=
  by
    exact And.intro Ev.mixingHeightPositive Ev.depositionPositive

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse