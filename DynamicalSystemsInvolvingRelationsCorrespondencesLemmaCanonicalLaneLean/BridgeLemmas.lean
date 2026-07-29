import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean.DynamicalRelations

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean

def bridgeClosed (A : DynamicalRelationsAdmissibleClass) : Prop :=
  DynamicalWitnessClosed A.system

theorem bridge_from_admissible_class (A : DynamicalRelationsAdmissibleClass) :
    bridgeClosed A := by
  exact A.system.admissible

end DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean
end HautevilleHouse
