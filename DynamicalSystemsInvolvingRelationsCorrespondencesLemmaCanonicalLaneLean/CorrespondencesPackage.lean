import DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean

structure CorrespondencesPackage where
  dynamicalSystem : Type u
  stateSpace : Type v
  relation : dynamicalSystem → stateSpace → stateSpace → Prop
  correspondenceClosed : Prop
  fixedPointExistence : Prop
  iterationConvergence : Prop

def CorrespondencesClosed (C : CorrespondencesPackage) : Prop :=
  C.correspondenceClosed ∧ C.fixedPointExistence ∧ C.iterationConvergence

structure CorrespondencesEvidence (C : CorrespondencesPackage) where
  correspondenceClosedProp : C.correspondenceClosed
  fixedPointExistenceProp : C.fixedPointExistence
  iterationConvergenceProp : C.iterationConvergence

theorem correspondences_closed_from_evidence (C : CorrespondencesPackage)
    (E : CorrespondencesEvidence C) : CorrespondencesClosed C := by
  exact And.intro E.correspondenceClosedProp
    (And.intro E.fixedPointExistenceProp E.iterationConvergenceProp)

end DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean
end HautevilleHouse