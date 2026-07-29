import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean

structure RelationCorrespondenceDynamicsPackage where
  stateSpace : Type u
  relation : stateSpace → stateSpace → Prop
  correspondence : Set (stateSpace × stateSpace)
  dynamics : stateSpace → stateSpace
  relationClosedUnderDynamics : Prop
  correspondenceClosedUnderDynamics : Prop
  invarianceCondition : Prop

structure RelationCorrespondenceDynamicsEvidence (R : RelationCorrespondenceDynamicsPackage) where
  relationClosedUnderDynamicsClosed : R.relationClosedUnderDynamics
  correspondenceClosedUnderDynamicsClosed : R.correspondenceClosedUnderDynamics
  invarianceConditionClosed : R.invarianceCondition

def RelationCorrespondenceDynamicsClosed (R : RelationCorrespondenceDynamicsPackage) : Prop :=
  R.relationClosedUnderDynamics ∧ R.correspondenceClosedUnderDynamics ∧ R.invarianceCondition

theorem relation_correspondence_dynamics_closed_from_evidence
    (R : RelationCorrespondenceDynamicsPackage) (E : RelationCorrespondenceDynamicsEvidence R) :
    RelationCorrespondenceDynamicsClosed R := by
  exact And.intro E.relationClosedUnderDynamicsClosed
    (And.intro E.correspondenceClosedUnderDynamicsClosed E.invarianceConditionClosed)

end DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean
end HautevilleHouse