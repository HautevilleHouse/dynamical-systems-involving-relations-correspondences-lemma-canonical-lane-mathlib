import DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean.CorrespondenceLemmaProof

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean

structure ParametricFixedPointStructure {X : Type u} {DS : DynamicalSystem X}
    (R : RelationCorrespondencePackage DS) where
  parameterSpace : Type v
  parametricCorrespondence : parameterSpace → DS.stateSpace → DS.stateSpace → Prop
  graphClosedFamily : Prop
  measurableSelection : Prop
  parametricFixedPointSet : Prop
  graphClosedFamilyTerm : graphClosedFamily
  measurableSelectionTerm : measurableSelection
  parametricFixedPointSetTerm : parametricFixedPointSet

def ParametricFixedPointStructureClosed {X : Type u} {DS : DynamicalSystem X}
    {R : RelationCorrespondencePackage DS} (P : ParametricFixedPointStructure R) : Prop :=
  P.graphClosedFamily ∧ P.measurableSelection ∧ P.parametricFixedPointSet

structure ParametricFixedPointEvidence {X : Type u} {DS : DynamicalSystem X}
    {R : RelationCorrespondencePackage DS} (P : ParametricFixedPointStructure R) where
  graphClosedFamilyClosed : P.graphClosedFamily
  measurableSelectionClosed : P.measurableSelection
  parametricFixedPointSetClosed : P.parametricFixedPointSet

theorem parametric_fixed_point_closed_from_evidence
    {X : Type u} {DS : DynamicalSystem X} {R : RelationCorrespondencePackage DS}
    (P : ParametricFixedPointStructure R) (E : ParametricFixedPointEvidence P) :
    ParametricFixedPointStructureClosed P :=
  And.intro E.graphClosedFamilyClosed
    (And.intro E.measurableSelectionClosed E.parametricFixedPointSetClosed)

end DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean
end HautevilleHouse
