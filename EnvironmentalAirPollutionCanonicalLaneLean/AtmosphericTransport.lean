import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

structure AtmosphericTransportPackage (A : AirQualityDataPackage) where
  advectionField : A.region → A.time → ℝ^3
  diffusionCoefficient : ℝ
  chemicalReactionRate : ℝ
  boundaryLayerHeight : ℝ
  transportEquationClosed : Prop

def AtmosphericTransportClosed (A : AirQualityDataPackage) (T : AtmosphericTransportPackage A) : Prop :=
  T.transportEquationClosed

structure AtmosphericTransportEvidence (A : AirQualityDataPackage) (T : AtmosphericTransportPackage A) where
  transportEquationClosedTerm : T.transportEquationClosed

theorem atmospheric_transport_closed_from_evidence (A : AirQualityDataPackage) (T : AtmosphericTransportPackage A) (E : AtmosphericTransportEvidence A T) :
  AtmosphericTransportClosed A T := by
  exact E.transportEquationClosedTerm

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse