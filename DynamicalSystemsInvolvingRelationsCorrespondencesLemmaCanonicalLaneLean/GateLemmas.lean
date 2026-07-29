import DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean

def gateClosed (A : DynamicalRelationsAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : DynamicalRelationsAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean
end HautevilleHouse
