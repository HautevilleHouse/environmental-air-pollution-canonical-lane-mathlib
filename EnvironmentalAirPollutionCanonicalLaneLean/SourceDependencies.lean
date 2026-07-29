import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

structure SourceDependency where
  file : String
  kind : String
  module : String
  name : String
  alias : String
  level : Nat

def sourceDependencies : List SourceDependency :=
  [{ file := "scripts/emission_inventory.py", kind := "import", module := "pandas", name := "", alias := "pd", level := 0 },
   { file := "scripts/air_quality_model.py", kind := "from_import", module := "numpy", name := "array", alias := "", level := 0 },
   { file := "scripts/health_exposure.py", kind := "import", module := "scipy.stats", name := "", alias := "", level := 0 }]

theorem source_dependency_count_checked : sourceDependencies.length = 3 := by rfl

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse