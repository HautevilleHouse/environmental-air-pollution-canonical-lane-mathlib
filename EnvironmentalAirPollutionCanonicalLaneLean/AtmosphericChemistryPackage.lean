import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

structure ChemicalReaction where
  reactants : List String
  products : List String
  rateConstant : Float
  temperatureDependence : String

structure AtmosphericChemistryPackage where
  reactions : List ChemicalReaction
  oxidants : List String
  photolysisRates : String

structure AtmosphericChemistryEvidence (C : AtmosphericChemistryPackage) where
  rateConstantsPositive : ∀ r ∈ C.reactions, r.rateConstant > 0
  oxidantsPresent : C.oxidants ≠ []

def AtmosphericChemistryClosed (C : AtmosphericChemistryPackage) : Prop :=
  ∀ r ∈ C.reactions, r.rateConstant > 0

theorem atmospheric_chemistry_closed_from_evidence (C : AtmosphericChemistryPackage) (Ev : AtmosphericChemistryEvidence C) : AtmosphericChemistryClosed C :=
  by
    exact Ev.rateConstantsPositive

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse