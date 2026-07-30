import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure ArrowDebreuEquilibrium where
  agents : Nat
  goods : Nat
  endowments : List (List Float)
  preferences : List (List Float -> Prop)
  prices : List Float
  allocations : List (List Float)
  marketClearing : Prop
  individuallyRational : Prop
  paretoOptimal : Prop
  marketClearingTerm : marketClearing
  individuallyRationalTerm : individuallyRational
  paretoOptimalTerm : paretoOptimal

structure GeneralEquilibriumEvidence (E : ArrowDebreuEquilibrium) where
  marketClearingClosed : E.marketClearing
  individuallyRationalClosed : E.individuallyRational
  paretoOptimalClosed : E.paretoOptimal

def GeneralEquilibriumClosed (E : ArrowDebreuEquilibrium) : Prop :=
  E.marketClearing ∧ E.individuallyRational ∧ E.paretoOptimal

theorem general_equilibrium_closed_from_evidence (E : ArrowDebreuEquilibrium)
    (Ev : GeneralEquilibriumEvidence E) : GeneralEquilibriumClosed E := by
  exact And.intro Ev.marketClearingClosed
    (And.intro Ev.individuallyRationalClosed Ev.paretoOptimalClosed)

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse
