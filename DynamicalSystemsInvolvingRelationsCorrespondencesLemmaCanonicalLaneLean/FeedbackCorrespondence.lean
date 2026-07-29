import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemma

structure FeedbackCorrespondencePackage where
  inputSpace : Type u
  stateSpace : Type v
  feedbackCorrespondence : inputSpace → stateSpace → Set (stateSpace)
  closedLoopStable : Prop
  admissibleFeedback : Prop
  bridgeWitness : admissibleFeedback

def FeedbackCorrespondenceClosed (F : FeedbackCorrespondencePackage) : Prop :=
  F.closedLoopStable ∧ F.admissibleFeedback

end DynamicalSystemsInvolvingRelationsCorrespondencesLemma
end HautevilleHouse
