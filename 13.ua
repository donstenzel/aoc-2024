# Experimental!
~ "git: github.com/amatgil/steal-gift" ~ AoCGet
~ "lib" ~ Ints P!

Parse ← P!(⊃↙₂⊣ ↯3_2 Ints)
Det   ← /-/×⍜⊢⇌
Inv   ← ÷⊃Det⍜♭(⍜⊏¯ 1_2 ⍜⊏⇌ 0_3)

P₁ ← (
  ≡(/+×Inv)
  ▽≡/×⊸=⊃⁅⁅₂
  ⧻⊚×⌞3_1
)

P₂ ← P₁ ⊙(+1e13)

AoCGet 2024 13
Parse
⊃P₂ P₁
