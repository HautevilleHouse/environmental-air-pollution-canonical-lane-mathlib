import HautevilleHouse.EnvironmentalAirPollutionCanonicalLaneLean.EnvironmentalAirPollutionObjects

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

structure DispersionModelPackage where
  sourceModels : Prop
  transportEquation : Prop
  chemicalTransformations : Prop
  depositionRate : Prop

structure DispersionModelEvidence (M : DispersionModelPackage) where
  sourceModelsClosed : M.sourceModels
  transportEquationClosed : M.transportEquation
  chemicalTransformationsClosed : M.chemicalTransformations
  depositionRateClosed : M.depositionRate

def DispersionModelClosed (M : DispersionModelPackage) : Prop :=
  M.sourceModels ∧ M.transportEquation ∧ M.chemicalTransformations ∧ M.depositionRate

theorem dispersionModelClosedFromEvidence (M : DispersionModelPackage) (E : DispersionModelEvidence M) :
    DispersionModelClosed M := by
  exact And.intro E.sourceModelsClosed (And.intro E.transportEquationClosed (And.intro E.chemicalTransformationsClosed E.depositionRateClosed))

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse