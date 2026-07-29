import DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean.CorrespondencesPackage
import Mathlib.Dynamics.Flow

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean

structure DynamicalCore (C : CorrespondencesPackage) where
  flow : C.dynamicalSystem → C.stateSpace → C.stateSpace
  invariantSet : Set C.stateSpace
  correspondencePreserved : Prop
  closureProperty : Prop
  evidence : correspondencePreserved ∧ closureProperty

def DynamicalCoreClosed {C : CorrespondencesPackage} (D : DynamicalCore C) : Prop :=
  D.correspondencePreserved ∧ D.closureProperty

theorem dynamical_core_closed {C : CorrespondencesPackage} (D : DynamicalCore C) :
    DynamicalCoreClosed D := D.evidence

end DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean
end HautevilleHouse