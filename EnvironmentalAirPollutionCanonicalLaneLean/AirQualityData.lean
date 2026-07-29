import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

structure AirQualityDataPackage where
  region : Type u
  time : Type v
  pollutantConcentration : region → time → ℝ
  measurementError : Prop
  spatialCoverage : Prop
  temporalResolution : Prop

def AirQualityDataClosed (A : AirQualityDataPackage) : Prop :=
  A.measurementError ∧ A.spatialCoverage ∧ A.temporalResolution

structure AirQualityDataEvidence (A : AirQualityDataPackage) where
  measurementErrorClosed : A.measurementError
  spatialCoverageClosed : A.spatialCoverage
  temporalResolutionClosed : A.temporalResolution

theorem air_quality_data_closed_from_evidence (A : AirQualityDataPackage) (E : AirQualityDataEvidence A) :
  AirQualityDataClosed A := by
  exact And.intro E.measurementErrorClosed (And.intro E.spatialCoverageClosed E.temporalResolutionClosed)

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse