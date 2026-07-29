import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EnvironmentalAirPollutionCanonicalLaneLean.AirPollutionAdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

structure EmissionInventoryPackage where
  sourceTypes : List String
  emissionFactors : String → ℝ
  totalEmissions : ℝ
  temporalProfile : ℝ → ℝ

structure AtmosphericConcentrationPackage (E : EmissionInventoryPackage) where
  initialConcentration : ℝ
  transportOperator : (ℝ → ℝ) → (ℝ → ℝ)
  chemistryOperator : (ℝ → ℝ) → (ℝ → ℝ)
  concentrationEvolution : Prop
  initialConditionMatched : Prop

structure ConcentrationEvidence {E : EmissionInventoryPackage} (C : AtmosphericConcentrationPackage E) where
  concentrationEvolutionClosed : C.concentrationEvolution
  initialConditionMatchedClosed : C.initialConditionMatched

def ConcentrationClosed {E : EmissionInventoryPackage} (C : AtmosphericConcentrationPackage E) : Prop :=
  C.concentrationEvolution ∧ C.initialConditionMatched

theorem concentration_closed_from_evidence {E : EmissionInventoryPackage} (C : AtmosphericConcentrationPackage E) (E' : ConcentrationEvidence C) : ConcentrationClosed C :=
  And.intro E'.concentrationEvolutionClosed E'.initialConditionMatchedClosed

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse