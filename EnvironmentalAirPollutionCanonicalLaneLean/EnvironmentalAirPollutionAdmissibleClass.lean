import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

structure AirPollutionAdmittedObject where
  pollutantName : String
  emissionRate : Float
  concentrationField : Type
  measurementStation : Type
  conclusion : Prop

def AdmittedObjectConclusion (O : AirPollutionAdmittedObject) : Prop :=
  O.conclusion

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse