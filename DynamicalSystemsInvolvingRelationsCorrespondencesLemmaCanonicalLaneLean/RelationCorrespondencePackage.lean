import DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean

structure DynamicalSystem (X : Type u) where
  stateSpace : Type u
  dynamics : stateSpace → stateSpace
  relation : stateSpace → stateSpace → Prop
  compositionClosure : Prop
  relationCompatibleWithDynamics : Prop
  compositionClosureTerm : compositionClosure
  relationCompatibleWithDynamicsTerm : relationCompatibleWithDynamics

def DynamicalSystemClosed {X : Type u} (DS : DynamicalSystem X) : Prop :=
  DS.compositionClosure ∧ DS.relationCompatibleWithDynamics

structure RelationCorrespondencePackage {X : Type u} (DS : DynamicalSystem X) where
  correspondence : DS.stateSpace → DS.stateSpace → Prop
  graphClosed : Prop
  upperHemContinuity : Prop
  lowerHemContinuity : Prop
  fixedPointCondition : Prop
  graphClosedTerm : graphClosed
  upperHemContinuityTerm : upperHemContinuity
  lowerHemContinuityTerm : lowerHemContinuity
  fixedPointConditionTerm : fixedPointCondition

def RelationCorrespondencePackageClosed {X : Type u} {DS : DynamicalSystem X}
    (R : RelationCorrespondencePackage DS) : Prop :=
  R.graphClosed ∧ R.upperHemContinuity ∧ R.lowerHemContinuity ∧ R.fixedPointCondition

structure RelationCorrespondenceEvidence {X : Type u} {DS : DynamicalSystem X}
    (R : RelationCorrespondencePackage DS) where
  graphClosedClosed : R.graphClosed
  upperHemContinuityClosed : R.upperHemContinuity
  lowerHemContinuityClosed : R.lowerHemContinuity
  fixedPointConditionClosed : R.fixedPointCondition

theorem relation_correspondence_closed_from_evidence
    {X : Type u} {DS : DynamicalSystem X} (R : RelationCorrespondencePackage DS)
    (E : RelationCorrespondenceEvidence R) : RelationCorrespondencePackageClosed R :=
  And.intro E.graphClosedClosed
    (And.intro E.upperHemContinuityClosed
      (And.intro E.lowerHemContinuityClosed E.fixedPointConditionClosed))

end DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean
end HautevilleHouse
