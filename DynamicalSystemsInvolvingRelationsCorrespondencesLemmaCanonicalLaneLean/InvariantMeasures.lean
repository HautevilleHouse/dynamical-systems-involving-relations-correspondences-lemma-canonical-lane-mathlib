import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean.DynamicalRelations

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean

structure InvariantMeasurePackage {S : DynamicalSystem} where
  measure : S.X → ℝ
  invariance : ∀ x, measure (S.F x) = measure x
  totalMassOne : ∑' x, measure x = 1
  admissible : measure ≥ 0

structure InvariantMeasureEvidence {S : DynamicalSystem} (P : InvariantMeasurePackage S) where
  invarianceClosed : P.invariance
  totalMassOneClosed : P.totalMassOne
  admissibleClosed : P.admissible

def InvariantMeasureClosed {S : DynamicalSystem} (P : InvariantMeasurePackage S) : Prop :=
  P.invariance ∧ P.totalMassOne ∧ P.admissible

theorem invariant_measure_closed_from_evidence {S : DynamicalSystem} (P : InvariantMeasurePackage S) (E : InvariantMeasureEvidence P) : InvariantMeasureClosed P := by
  exact And.intro E.invarianceClosed (And.intro E.totalMassOneClosed E.admissibleClosed)

end DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean
end HautevilleHouse
