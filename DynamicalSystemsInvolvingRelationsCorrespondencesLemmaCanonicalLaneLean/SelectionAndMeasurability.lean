import DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean.ParametricFixedPoint

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean

structure SelectionStructure {X : Type u} {DS : DynamicalSystem X}
    (R : RelationCorrespondencePackage DS) where
  measurableSelectionFunction : DS.stateSpace → DS.stateSpace
  selectionProperty : Prop
  selectionMeasurable : Prop
  selectionFixedPoint : Prop
  selectionPropertyTerm : selectionProperty
  selectionMeasurableTerm : selectionMeasurable
  selectionFixedPointTerm : selectionFixedPoint

def SelectionStructureClosed {X : Type u} {DS : DynamicalSystem X}
    {R : RelationCorrespondencePackage DS} (S : SelectionStructure R) : Prop :=
  S.selectionProperty ∧ S.selectionMeasurable ∧ S.selectionFixedPoint

structure SelectionEvidence {X : Type u} {DS : DynamicalSystem X}
    {R : RelationCorrespondencePackage DS} (S : SelectionStructure R) where
  selectionPropertyClosed : S.selectionProperty
  selectionMeasurableClosed : S.selectionMeasurable
  selectionFixedPointClosed : S.selectionFixedPoint

theorem selection_closed_from_evidence {X : Type u} {DS : DynamicalSystem X}
    {R : RelationCorrespondencePackage DS} (S : SelectionStructure R)
    (E : SelectionEvidence S) : SelectionStructureClosed S :=
  And.intro E.selectionPropertyClosed
    (And.intro E.selectionMeasurableClosed E.selectionFixedPointClosed)

theorem selection_produces_fixed_point {X : Type u} {DS : DynamicalSystem X}
    {R : RelationCorrespondencePackage DS} (S : SelectionStructure R)
    (H : SelectionStructureClosed S) : Prop :=
  S.selectionFixedPoint

end DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean
end HautevilleHouse
