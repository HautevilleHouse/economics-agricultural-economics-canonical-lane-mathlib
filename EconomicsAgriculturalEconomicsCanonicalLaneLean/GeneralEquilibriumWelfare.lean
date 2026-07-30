import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure GeneralEquilibriumWelfarePackage (A : AdmissibleClass) where
  exchangeEconomy : Type u
  paretoOptimalAllocation : Type v
  competitiveAllocation : Type w
  firstFundamentalTheorem : Prop
  secondFundamentalTheorem : Prop
  representativeAgentExists : Prop
  socialWelfareFunction : Type x

structure GeneralEquilibriumWelfareEvidence (A : AdmissibleClass) (P : GeneralEquilibriumWelfarePackage A) where
  firstFundamentalTheoremClosed : P.firstFundamentalTheorem
  secondFundamentalTheoremClosed : P.secondFundamentalTheorem
  representativeAgentExistsClosed : P.representativeAgentExists

def GeneralEquilibriumWelfareClosed (A : AdmissibleClass) (P : GeneralEquilibriumWelfarePackage A) : Prop :=
  P.firstFundamentalTheorem ∧ P.secondFundamentalTheorem ∧ P.representativeAgentExists

theorem general_equilibrium_welfare_closed_from_evidence
    (A : AdmissibleClass) (P : GeneralEquilibriumWelfarePackage A) (E : GeneralEquilibriumWelfareEvidence A P) :
    GeneralEquilibriumWelfareClosed A P := by
  exact And.intro E.firstFundamentalTheoremClosed
    (And.intro E.secondFundamentalTheoremClosed E.representativeAgentExistsClosed)

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse