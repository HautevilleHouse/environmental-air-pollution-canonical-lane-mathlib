import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

structure EmissionSourceGeometrizationPackage (R : AirQualityRegionPackage) where
  sourceLocations : List (Float × Float)
  plumeDispersionParameters : Prop
  downwindConcentrationProfile : Type
  geometrizationCompleted : Prop

structure EmissionSourceGeometrizationEvidence {R : AirQualityRegionPackage}
    (G : EmissionSourceGeometrizationPackage R) where
  plumeDispersionParametersClosed : G.plumeDispersionParameters
  geometrizationCompletedClosed : G.geometrizationCompleted

def EmissionSourceGeometrizationClosed {R : AirQualityRegionPackage}
    (G : EmissionSourceGeometrizationPackage R) : Prop :=
  G.plumeDispersionParameters ∧ G.geometrizationCompleted

theorem emission_source_geometrization_closed_from_evidence
    {R : AirQualityRegionPackage} (G : EmissionSourceGeometrizationPackage R)
    (E : EmissionSourceGeometrizationEvidence G) : EmissionSourceGeometrizationClosed G := by
  exact And.intro E.plumeDispersionParametersClosed E.geometrizationCompletedClosed

end HautevilleHouse
end EnvironmentalAirPollutionCanonicalLaneLean