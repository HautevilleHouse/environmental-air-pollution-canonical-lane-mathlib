import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EnvironmentalAirPollutionCanonicalLaneLean.DispersionPackage

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

structure PopulationExposurePackage {E : EmissionInventoryPackage} {C : AtmosphericConcentrationPackage E} {Ch : ChemicalTransformationPackage C} {D : DispersionModelPackage} where
  populationDensity : ℝ → ℝ
  exposureResponseFunction : ℝ → ℝ
  healthImpactMetric : ℝ
  exposureComputation : Prop

structure PopulationExposureEvidence (P : PopulationExposurePackage) where
  exposureComputationClosed : P.exposureComputation
  healthImpactMetricClosed : P.healthImpactMetric

def PopulationExposureClosed (P : PopulationExposurePackage) : Prop :=
  P.exposureComputation ∧ P.healthImpactMetric

theorem population_exposure_closed_from_evidence (P : PopulationExposurePackage) (E : PopulationExposureEvidence P) : PopulationExposureClosed P :=
  And.intro E.exposureComputationClosed E.healthImpactMetricClosed

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse