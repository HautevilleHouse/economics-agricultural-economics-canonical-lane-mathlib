import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure ConsumerDemandPackage (A : AdmissibleClass) where
  preferenceRelation : Type u
  budgetConstraint : Type v
  demandFunction : Type w
  utilityMaximization : Prop
  slutskyMatrixNegativeSemidefinite : Prop
  weakAxiomRevealedPreference : Prop
  demandHomogeneousDegreeZero : Prop

structure ConsumerDemandEvidence (A : AdmissibleClass) (P : ConsumerDemandPackage A) where
  utilityMaximizationClosed : P.utilityMaximization
  slutskyMatrixNegativeSemidefiniteClosed : P.slutskyMatrixNegativeSemidefinite
  weakAxiomRevealedPreferenceClosed : P.weakAxiomRevealedPreference
  demandHomogeneousDegreeZeroClosed : P.demandHomogeneousDegreeZero

def ConsumerDemandClosed (A : AdmissibleClass) (P : ConsumerDemandPackage A) : Prop :=
  P.utilityMaximization ∧ P.slutskyMatrixNegativeSemidefinite ∧
  P.weakAxiomRevealedPreference ∧ P.demandHomogeneousDegreeZero

theorem consumer_demand_closed_from_evidence
    (A : AdmissibleClass) (P : ConsumerDemandPackage A) (E : ConsumerDemandEvidence A P) :
    ConsumerDemandClosed A P := by
  exact And.intro E.utilityMaximizationClosed
    (And.intro E.slutskyMatrixNegativeSemidefiniteClosed
      (And.intro E.weakAxiomRevealedPreferenceClosed E.demandHomogeneousDegreeZeroClosed))

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse