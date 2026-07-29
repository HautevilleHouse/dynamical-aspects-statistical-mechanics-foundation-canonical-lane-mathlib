import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean

structure DynamicalSystem where
  stateSpace : Type u
  time : Type v
  dynamics : time → stateSpace → stateSpace
  invariantMeasures : Set (Measure stateSpace)
  ergodicComponents : Set (Measure stateSpace)
  mixingProperty : Prop
  entropyRate : ℝ
  chaosIndicator : Prop

structure DynamicalSystemEvidence (D : DynamicalSystem) where
  invariantMeasuresNonempty : D.invariantMeasures.Nonempty
  ergodicDecomposition : D.invariantMeasures = D.ergodicComponents
  mixingPropertyClosed : D.mixingProperty
  entropyRateFinite : D.entropyRate < ∞
  chaosIndicatorClosed : D.chaosIndicator

def DynamicalSystemClosed (D : DynamicalSystem) : Prop :=
  D.invariantMeasures.Nonempty ∧
  D.invariantMeasures = D.ergodicComponents ∧
  D.mixingProperty ∧
  D.entropyRate < ∞ ∧
  D.chaosIndicator

theorem dynamical_system_closed_from_evidence (D : DynamicalSystem) (E : DynamicalSystemEvidence D) :
    DynamicalSystemClosed D := by
  exact And.intro E.invariantMeasuresNonempty
    (And.intro E.ergodicDecomposition
      (And.intro E.mixingPropertyClosed
        (And.intro E.entropyRateFinite E.chaosIndicatorClosed)))

end DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
