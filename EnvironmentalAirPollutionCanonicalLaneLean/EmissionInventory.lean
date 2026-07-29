import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

structure EmissionInventoryPackage where
  sourceTypes : Type u
  emissionFactors : Type v
  spatialDistribution : Type w
  temporalProfile : Type x
  emissionInventoryCompiled : Prop
  emissionFactorsValidated : Prop
  spatialAllocationChecked : Prop
  temporalAllocationChecked : Prop

structure EmissionInventoryEvidence (E : EmissionInventoryPackage) where
  emissionInventoryCompiledClosed : E.emissionInventoryCompiled
  emissionFactorsValidatedClosed : E.emissionFactorsValidated
  spatialAllocationCheckedClosed : E.spatialAllocationChecked
  temporalAllocationCheckedClosed : E.temporalAllocationChecked

def EmissionInventoryClosed (E : EmissionInventoryPackage) : Prop :=
  E.emissionInventoryCompiled ∧ E.emissionFactorsValidated ∧
  E.spatialAllocationChecked ∧ E.temporalAllocationChecked

theorem emission_inventory_closed_from_evidence (E : EmissionInventoryPackage)
    (Ev : EmissionInventoryEvidence E) : EmissionInventoryClosed E := by
  exact And.intro Ev.emissionInventoryCompiledClosed
    (And.intro Ev.emissionFactorsValidatedClosed
      (And.intro Ev.spatialAllocationCheckedClosed Ev.temporalAllocationCheckedClosed))

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse