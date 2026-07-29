import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean.DynamicalRelations

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean

structure CorrespondenceTopologyPackage {S : DynamicalSystem} where
  upperSemicontinuous : S.correspondence is UpperSemicontinuous
  measurableSelection : ∃ f : S.X → S.X, (∀ x, f x ∈ S.correspondence x) ∧ Measurable f
  admissible : Prop

structure CorrespondenceTopologyEvidence {S : DynamicalSystem} (P : CorrespondenceTopologyPackage S) where
  upperSemicontinuousClosed : P.upperSemicontinuous
  measurableSelectionClosed : P.measurableSelection
  admissibleClosed : P.admissible

def CorrespondenceTopologyClosed {S : DynamicalSystem} (P : CorrespondenceTopologyPackage S) : Prop :=
  P.upperSemicontinuous ∧ P.measurableSelection ∧ P.admissible

theorem correspondence_topology_closed_from_evidence {S : DynamicalSystem} (P : CorrespondenceTopologyPackage S) (E : CorrespondenceTopologyEvidence P) : CorrespondenceTopologyClosed P := by
  exact And.intro E.upperSemicontinuousClosed (And.intro E.measurableSelectionClosed E.admissibleClosed)

end DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean
end HautevilleHouse
