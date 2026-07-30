import canonicalLaneMathlib.AdmissibleClass

/-!
# Utility Theory Package
-/

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure UtilityTheoryPackage where
  preferenceRelation : Type
  utilityFunction : Type
  representationTheorem : Prop
  continuity : Prop
  monotonicity : Prop

structure UtilityTheoryEvidence (U : UtilityTheoryPackage) where
  representationTheoremClosed : U.representationTheorem
  continuityClosed : U.continuity
  monotonicityClosed : U.monotonicity

def UtilityTheoryClosed (U : UtilityTheoryPackage) : Prop :=
  U.representationTheorem ∧ U.continuity ∧ U.monotonicity

theorem utility_theory_closed_from_evidence (U : UtilityTheoryPackage) (E : UtilityTheoryEvidence U) : UtilityTheoryClosed U := by
  exact And.intro E.representationTheoremClosed (And.intro E.continuityClosed E.monotonicityClosed)

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse