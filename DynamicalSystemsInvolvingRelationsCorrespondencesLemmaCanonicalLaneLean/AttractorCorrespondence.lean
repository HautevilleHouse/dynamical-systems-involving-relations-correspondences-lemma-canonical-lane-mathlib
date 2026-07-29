import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean

structure AttractorCorrespondencePackage {R : RelationCorrespondenceDynamicsPackage}
    (D : RelationCorrespondenceDynamicsPackage) where
  attractorSet : Set D.stateSpace
  attractorInvariant : Prop
  correspondenceConverges : Prop
  basinOfAttraction : Prop

structure AttractorCorrespondenceEvidence {R : RelationCorrespondenceDynamicsPackage}
    {D : RelationCorrespondenceDynamicsPackage} (A : AttractorCorrespondencePackage D) where
  attractorInvariantClosed : A.attractorInvariant
  correspondenceConvergesClosed : A.correspondenceConverges
  basinOfAttractionClosed : A.basinOfAttraction

def AttractorCorrespondenceClosed {R : RelationCorrespondenceDynamicsPackage}
    {D : RelationCorrespondenceDynamicsPackage} (A : AttractorCorrespondencePackage D) : Prop :=
  A.attractorInvariant ∧ A.correspondenceConverges ∧ A.basinOfAttraction

theorem attractor_correspondence_closed_from_evidence
    {R : RelationCorrespondenceDynamicsPackage} {D : RelationCorrespondenceDynamicsPackage}
    (A : AttractorCorrespondencePackage D) (E : AttractorCorrespondenceEvidence A) :
    AttractorCorrespondenceClosed A := by
  exact And.intro E.attractorInvariantClosed
    (And.intro E.correspondenceConvergesClosed E.basinOfAttractionClosed)

end DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean
end HautevilleHouse