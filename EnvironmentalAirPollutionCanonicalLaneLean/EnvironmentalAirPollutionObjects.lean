import HautevilleHouse.EnvironmentalAirPollutionCanonicalLaneLean.EnvironmentalAirPollutionAdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

structure Pollutant where
  name : String
  molarMass : Float
  toxicity : Float

structure EmissionSource where
  location : (Float × Float)
  emissionRate : Float
  pollutant : Pollutant

structure ReceptorPoint where
  location : (Float × Float)
  height : Float

structure ConcentrationField where
  source : EmissionSource
  receptor : ReceptorPoint
  concentration : Float
  modelValidated : Prop

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse