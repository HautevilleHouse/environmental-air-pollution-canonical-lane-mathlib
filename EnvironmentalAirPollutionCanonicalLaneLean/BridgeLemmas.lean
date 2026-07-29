import HautevilleHouse.EnvironmentalAirPollutionCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PollutionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse