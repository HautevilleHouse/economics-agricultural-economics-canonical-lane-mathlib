import canonicalLaneMathlib.AdmissibleClass

/-!
# Growth Model Package
-/

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure GrowthModelPackage where
  productionFunction : Type
  capitalAccumulation : Prop
  laborSupply : Prop
  steadyState : Prop
  convergence : Prop

structure GrowthModelEvidence (G : GrowthModelPackage) where
  capitalAccumulationClosed : G.capitalAccumulation
  laborSupplyClosed : G.laborSupply
  steadyStateClosed : G.steadyState
  convergenceClosed : G.convergence

def GrowthModelClosed (G : GrowthModelPackage) : Prop :=
  G.capitalAccumulation ∧ G.laborSupply ∧ G.steadyState ∧ G.convergence

theorem growth_model_closed_from_evidence (G : GrowthModelPackage) (E : GrowthModelEvidence G) : GrowthModelClosed G := by
  exact And.intro E.capitalAccumulationClosed (And.intro E.laborSupplyClosed (And.intro E.steadyStateClosed E.convergenceClosed))

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse