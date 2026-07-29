import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EnvironmentalAirPollutionCanonicalLaneLean.ChemistryPackage

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

structure DispersionModelPackage {E : EmissionInventoryPackage} {C : AtmosphericConcentrationPackage E} {Ch : ChemicalTransformationPackage C} where
  windField : ℝ → ℝ
  turbulenceClosure : Prop
  dispersionCoefficient : ℝ
  boundaryLayerHeight : ℝ

structure DispersionEvidence {E : EmissionInventoryPackage} {C : AtmosphericConcentrationPackage E} {Ch : ChemicalTransformationPackage C} (D : DispersionModelPackage) where
  turbulenceClosureClosed : D.turbulenceClosure
  dispersionCoefficientClosed : D.dispersionCoefficient

def DispersionClosed {E : EmissionInventoryPackage} {C : AtmosphericConcentrationPackage E} {Ch : ChemicalTransformationPackage C} (D : DispersionModelPackage) : Prop :=
  D.turbulenceClosure ∧ D.dispersionCoefficient

theorem dispersion_closed_from_evidence {E : EmissionInventoryPackage} {C : AtmosphericConcentrationPackage E} {Ch : ChemicalTransformationPackage C} (D : DispersionModelPackage) (E' : DispersionEvidence D) : DispersionClosed D :=
  And.intro E'.turbulenceClosureClosed E'.dispersionCoefficientClosed

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse