import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean

structure DynamicalSystem where
  X : Type u
  F : X → X
  relations : Set (X × X)
  correspondence : X → Set X
  admissible : Prop

structure DynamicalRelationsAdmissibleClass where
  system : DynamicalSystem
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def DynamicalRelationsClosure (A : DynamicalRelationsAdmissibleClass) : Prop :=
  DynamicalWitnessClosed A.system ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean
end HautevilleHouse
