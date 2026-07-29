import HautevilleHouse.EnvironmentalAirPollutionCanonicalLaneLean.DispersionModelProof

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

structure AirPollutionTheoremStatement where
  theoremKey : String
  description : String
  admissibleClassUsed : Bool
  dispersionModelClosed : Prop

def sourceAirPollutionStatement : AirPollutionTheoremStatement := {
  theoremKey := "EnvironmentalAirPollutionCanonicalLaneLean",
  description := "Dispersion model closure for PM2.5",
  admissibleClassUsed := true,
  dispersionModelClosed := DispersionModelClosed
}

theorem statementSourceKeyMatches : sourceAirPollutionStatement.theoremKey = "EnvironmentalAirPollutionCanonicalLaneLean" := rfl

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse