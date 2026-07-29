import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

structure HealthExposureModelPackage where
  pollutant : Type
  concentrationThreshold : ℝ
  exposureTime : ℝ
  populationDensity : ℝ^3 → ℝ
  healthRiskFunction : ℝ → ℝ
  exposureAssessmentClosed : Prop

def HealthExposureModelClosed (H : HealthExposureModelPackage) : Prop :=
  H.exposureAssessmentClosed

structure HealthExposureModelEvidence (H : HealthExposureModelPackage) where
  exposureAssessmentClosedTerm : H.exposureAssessmentClosed

theorem health_exposure_model_closed_from_evidence (H : HealthExposureModelPackage) (E : HealthExposureModelEvidence H) :
  HealthExposureModelClosed H := by
  exact E.exposureAssessmentClosedTerm

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse