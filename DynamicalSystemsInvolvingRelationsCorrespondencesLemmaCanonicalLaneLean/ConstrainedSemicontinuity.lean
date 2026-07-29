import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemma

structure ConstrainedSemicontinuityPackage where
  parameterSpace : Type u
  correspondence : parameterSpace → Set (parameterSpace)
  upperSemicontinuous : Prop
  lowerSemicontinuous : Prop
  admissibleSemicontinuity : Prop
  gateWitness : upperSemicontinuous ∧ lowerSemicontinuous

def ConstrainedSemicontinuityClosed (C : ConstrainedSemicontinuityPackage) : Prop :=
  C.upperSemicontinuous ∧ C.lowerSemicontinuous ∧ C.admissibleSemicontinuity

end DynamicalSystemsInvolvingRelationsCorrespondencesLemma
end HautevilleHouse
