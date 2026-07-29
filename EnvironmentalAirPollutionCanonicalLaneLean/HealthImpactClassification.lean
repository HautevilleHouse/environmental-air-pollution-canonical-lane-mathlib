import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

structure HealthImpactEndpoint where
  exposureLevel : Float
  healthResponseCurve : Type
  threshold : Float
  endpointMet : Prop
  remainderRecorded : Prop

structure HealthImpactClassificationPackage (R : AirQualityRegionPackage) where
  healthImpactEndpoint : HealthImpactEndpoint
  populationExposure : Float
  attributableMortality : Nat
  classificationEvidence : Prop

structure HealthImpactClassificationEvidence {R : AirQualityRegionPackage}
    (C : HealthImpactClassificationPackage R) where
  endpointMetClosed : C.healthImpactEndpoint.endpointMet
  classificationEvidenceClosed : C.classificationEvidence

def HealthImpactClassificationClosed {R : AirQualityRegionPackage}
    (C : HealthImpactClassificationPackage R) : Prop :=
  C.healthImpactEndpoint.endpointMet ∧ C.classificationEvidence

theorem health_impact_classification_closed_from_evidence
    {R : AirQualityRegionPackage} (C : HealthImpactClassificationPackage R)
    (E : HealthImpactClassificationEvidence C) : HealthImpactClassificationClosed C := by
  exact And.intro E.endpointMetClosed E.classificationEvidenceClosed

end HautevilleHouse
end EnvironmentalAirPollutionCanonicalLaneLean