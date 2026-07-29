import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean

structure CanonicalEnsemblePackage where
  phaseSpace : Type u
  hamiltonian : phaseSpace → ℝ
  temperature : ℝ
  partitionFunction : ℝ
  finiteVolume : Prop
  regularity : Prop
  finiteVolumeTerm : finiteVolume
  regularityTerm : regularity

structure CanonicalEnsembleEvidence (C : CanonicalEnsemblePackage) where
  partitionFunctionFinite : C.partitionFunction ≠ 0
  invarianceUnderFlow : Prop
  invarianceUnderFlowClosed : invarianceUnderFlow

def CanonicalEnsembleClosed (C : CanonicalEnsemblePackage) : Prop :=
  C.finiteVolume ∧ C.regularity ∧ C.partitionFunction ≠ 0

theorem canonical_ensemble_closed_from_evidence (C : CanonicalEnsemblePackage) (E : CanonicalEnsembleEvidence C) : CanonicalEnsembleClosed C := by
  exact And.intro C.finiteVolumeTerm (And.intro C.regularityTerm E.partitionFunctionFinite)

end DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse