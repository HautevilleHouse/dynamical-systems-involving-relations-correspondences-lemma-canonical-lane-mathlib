import DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean.RelationCorrespondencePackage

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean

structure CorrespondenceLemmaCertificate {X : Type u} {DS : DynamicalSystem X}
    (R : RelationCorrespondencePackage DS) where
  graphClosedFixedPoint : Prop
  graphClosedFixedPointTerm : graphClosedFixedPoint
  correspondenceLemmaCondition : Prop
  correspondenceLemmaConditionTerm : correspondenceLemmaCondition

def CorrespondenceLemmaCertificateClosed {X : Type u} {DS : DynamicalSystem X}
    {R : RelationCorrespondencePackage DS} (C : CorrespondenceLemmaCertificate R) : Prop :=
  C.graphClosedFixedPoint ∧ C.correspondenceLemmaCondition

theorem correspondence_lemma_certificate_closed
    {X : Type u} {DS : DynamicalSystem X} {R : RelationCorrespondencePackage DS}
    (C : CorrespondenceLemmaCertificate R) : CorrespondenceLemmaCertificateClosed C :=
  And.intro C.graphClosedFixedPointTerm C.correspondenceLemmaConditionTerm

theorem correspondence_lemma_from_closed_relation
    {X : Type u} {DS : DynamicalSystem X} {R : RelationCorrespondencePackage DS}
    (H : RelationCorrespondencePackageClosed R) (C : CorrespondenceLemmaCertificate R) : Prop :=
  H ∧ CorrespondenceLemmaCertificateClosed C

end DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean
end HautevilleHouse
