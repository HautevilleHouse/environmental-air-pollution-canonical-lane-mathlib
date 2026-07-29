import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EnvironmentalAirPollutionCanonicalLaneLean.AirPollutionModel

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

structure ChemicalTransformationPackage {E : EmissionInventoryPackage} (C : AtmosphericConcentrationPackage E) where
  reactionMechanism : List String
  rateConstants : String → ℝ
  equilibriumAssumptions : Prop
  transformationRates : ℝ → ℝ

structure ChemistryEvidence {E : EmissionInventoryPackage} {C : AtmosphericConcentrationPackage E} (Ch : ChemicalTransformationPackage C) where
  equilibriumAssumptionsClosed : Ch.equilibriumAssumptions
  transformationRatesClosed : Ch.transformationRates

def ChemistryClosed {E : EmissionInventoryPackage} {C : AtmosphericConcentrationPackage E} (Ch : ChemicalTransformationPackage C) : Prop :=
  Ch.equilibriumAssumptions ∧ Ch.transformationRates

theorem chemistry_closed_from_evidence {E : EmissionInventoryPackage} {C : AtmosphericConcentrationPackage E} (Ch : ChemicalTransformationPackage C) (E' : ChemistryEvidence Ch) : ChemistryClosed Ch :=
  And.intro E'.equilibriumAssumptionsClosed E'.transformationRatesClosed

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse