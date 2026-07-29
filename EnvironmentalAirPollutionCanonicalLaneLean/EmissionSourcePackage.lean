import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

structure EmissionSourcePackage where
  sourceType : String -- "point", "mobile", "area"
  location : String
  pollutant : String
  emissionRate : Float
  temporalProfile : String

structure EmissionSourceEvidence (E : EmissionSourcePackage) where
  sourceTypeValid : E.sourceType ∈ ["point", "mobile", "area"]
  locationKnown : True
  emissionRatePositive : E.emissionRate > 0

def EmissionSourceClosed (E : EmissionSourcePackage) : Prop :=
  E.emissionRate > 0

theorem emission_source_closed_from_evidence (E : EmissionSourcePackage) (Ev : EmissionSourceEvidence E) : EmissionSourceClosed E :=
  by
    exact Ev.emissionRatePositive

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse