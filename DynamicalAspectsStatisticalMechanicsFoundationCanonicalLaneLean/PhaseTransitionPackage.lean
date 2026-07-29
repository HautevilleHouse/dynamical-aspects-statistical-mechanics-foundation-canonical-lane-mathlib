import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean.GibbsMeasurePackage

/-!
# Phase Transition Package
-/

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean

structure PhaseTransitionPackage {G : GibbsMeasurePackage} where
  orderParameter : Type u
  criticalTemperature : ℝ
  symmetryBreaking : Prop
  discontinuity : Prop
  scalingLaws : Prop

def PhaseTransitionClosed {G : GibbsMeasurePackage} (P : PhaseTransitionPackage G) : Prop :=
  P.symmetryBreaking ∧ P.discontinuity ∧ P.scalingLaws

structure PhaseTransitionEvidence {G : GibbsMeasurePackage} (P : PhaseTransitionPackage G) where
  symmetryBreakingClosed : P.symmetryBreaking
  discontinuityClosed : P.discontinuity
  scalingLawsClosed : P.scalingLaws

theorem phase_transition_closed_from_evidence {G : GibbsMeasurePackage} (P : PhaseTransitionPackage G) (E : PhaseTransitionEvidence P) :
    PhaseTransitionClosed P := by
  exact And.intro E.symmetryBreakingClosed (And.intro E.discontinuityClosed E.scalingLawsClosed)

end DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse