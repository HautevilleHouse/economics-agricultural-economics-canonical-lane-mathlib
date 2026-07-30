import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

def ConstrainedEconomicsAgriculturalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_economics_agricultural_endgame (A : AdmissibleClass) :
    ConstrainedEconomicsAgriculturalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse