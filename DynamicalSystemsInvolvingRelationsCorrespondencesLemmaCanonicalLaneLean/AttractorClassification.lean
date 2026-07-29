import DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean.DynamicalCore

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean

structure AttractorClassification {C : CorrespondencesPackage} (D : DynamicalCore C) where
  attractorExists : Prop
  attractorInvariant : Prop
  attractorAttracts : Prop
  evidence : attractorExists ∧ attractorInvariant ∧ attractorAttracts

def AttractorClassificationClosed {C : CorrespondencesPackage} {D : DynamicalCore C}
    (A : AttractorClassification D) : Prop :=
  A.attractorExists ∧ A.attractorInvariant ∧ A.attractorAttracts

theorem attractor_classification_closed {C : CorrespondencesPackage} {D : DynamicalCore C}
    (A : AttractorClassification D) : AttractorClassificationClosed A := A.evidence

end DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean
end HautevilleHouse