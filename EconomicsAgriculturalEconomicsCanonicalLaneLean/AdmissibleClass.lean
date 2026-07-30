import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure AdmissibleClass where
  object : Type u
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  True ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse
