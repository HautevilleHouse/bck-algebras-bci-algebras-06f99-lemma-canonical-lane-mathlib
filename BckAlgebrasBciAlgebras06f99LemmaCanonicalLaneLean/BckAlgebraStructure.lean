import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean

structure BCKAlgebra (A : Type u) where
  carrier : Set A
  zero : A
  mul : A → A → A
  le : A → A → Prop
  le_refl : ∀ x, le x x
  le_trans : ∀ x y z, le x y → le y z → le x z
  le_antisymm : ∀ x y, le x y → le y x → x = y
  mul_assoc : ∀ x y z, mul (mul x y) z = mul x (mul y z)
  mul_comm : ∀ x y, mul x y = mul y x
  mul_id : ∀ x, mul x x = zero
  mul_le : ∀ x y, le (mul x y) x

structure BCKAlgebraEvidence (A : BCKAlgebra) where
  carrier_nonempty : A.carrier.Nonempty
  zero_in_carrier : A.zero ∈ A.carrier
  mul_closed : ∀ x y, x ∈ A.carrier → y ∈ A.carrier → A.mul x y ∈ A.carrier

def BCKAlgebraClosed (A : BCKAlgebra) : Prop :=
  let ev : BCKAlgebraEvidence A := by
    sorry
  in True

end BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean
end HautevilleHouse
