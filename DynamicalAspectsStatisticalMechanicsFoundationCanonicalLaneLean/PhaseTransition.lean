import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean

structure PhaseTransition where
  gibbsStateFamily : Set (Measure (ℕ → ℝ))
  criticalTemperature : ℝ
  symmetryBreaking : Prop
  orderParameter : (ℕ → ℝ) → ℝ
  coexistenceOfPhases : Prop

structure PhaseTransitionEvidence (P : PhaseTransition) where
  symmetryBreakingClosed : P.symmetryBreaking
  coexistenceOfPhasesClosed : P.coexistenceOfPhases
  orderParameterDetectsPhases : P.orderParameter ≠ λ _ => 0

def PhaseTransitionClosed (P : PhaseTransition) : Prop :=
  P.symmetryBreaking ∧ P.coexistenceOfPhases ∧ P.orderParameter ≠ λ _ => 0

theorem phase_transition_closed_from_evidence (P : PhaseTransition) (E : PhaseTransitionEvidence P) :
    PhaseTransitionClosed P := by
  exact And.intro E.symmetryBreakingClosed
    (And.intro E.coexistenceOfPhasesClosed E.orderParameterDetectsPhases)

end DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
