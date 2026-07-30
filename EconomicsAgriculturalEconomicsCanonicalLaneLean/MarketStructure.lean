import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure AgriculturalMarket where
  producers : Nat
  consumers : Nat
  productHomogeneity : Prop
  entryBarriers : Prop
  priceTaker : Prop
  marketPower : Prop
  productHomogeneityTerm : productHomogeneity
  entryBarriersTerm : entryBarriers
  priceTakerTerm : priceTaker
  marketPowerTerm : marketPower

def PerfectCompetition (M : AgriculturalMarket) : Prop :=
  M.productHomogeneity ∧ ¬M.entryBarriers ∧ M.priceTaker ∧ ¬M.marketPower

theorem perfect_competition_from_evidence (M : AgriculturalMarket) : PerfectCompetition M := by
  exact And.intro M.productHomogeneityTerm (And.intro (by exact M.entryBarriersTerm) (And.intro M.priceTakerTerm M.marketPowerTerm))

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse
