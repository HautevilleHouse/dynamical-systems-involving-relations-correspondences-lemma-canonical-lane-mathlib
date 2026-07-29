import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemma

structure CorrespondenceFlowPackage where
  timeDomain : Type u
  correspondence : timeDomain → Type v → Type v → Prop
  flowInvariance : Prop
  limitCorrespondence : Prop
  admissibleFlow : Prop
  bridgeClosedFromFlow : admissibleFlow

def CorrespondenceFlowClosed (C : CorrespondenceFlowPackage) : Prop :=
  C.flowInvariance ∧ C.limitCorrespondence ∧ C.admissibleFlow

end DynamicalSystemsInvolvingRelationsCorrespondencesLemma
end HautevilleHouse
