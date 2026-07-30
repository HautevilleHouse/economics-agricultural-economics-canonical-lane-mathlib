import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure WelfareEconomicsPackage where
  socialWelfareFunction : Type
  paretoOptimality : Prop
  equityCriterion : Prop
  impossibilityResult : Prop
  secondWelfareTheorem : Prop

structure WelfareEconomicsEvidence (W : WelfareEconomicsPackage) where
  paretoOptimalityClosed : W.paretoOptimality
  equityCriterionClosed : W.equityCriterion
  impossibilityResultClosed : W.impossibilityResult
  secondWelfareTheoremClosed : W.secondWelfareTheorem

def WelfareEconomicsClosed (W : WelfareEconomicsPackage) : Prop :=
  W.paretoOptimality ∧ W.equityCriterion ∧ W.impossibilityResult ∧ W.secondWelfareTheorem

theorem welfare_economics_closed_from_evidence (W : WelfareEconomicsPackage)
    (E : WelfareEconomicsEvidence W) : WelfareEconomicsClosed W := by
  exact And.intro E.paretoOptimalityClosed
    (And.intro E.equityCriterionClosed
      (And.intro E.impossibilityResultClosed E.secondWelfareTheoremClosed))

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse