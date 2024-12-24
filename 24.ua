# Experimental!
~ "git: github.com/amatgil/steal-gift" ~ AoCGet

AoCGet 2024 24
°$"_\n\n_"
∩(⊜□⊸≠@\n)
⊓(map⊙⋕⍚°$"_: _"
| ⍉[⍚°$"_ _ _ -> _"])
$"z_" ÷₂⊸⧻

End    ←
Inputs ←
Wires  ←

L   ← °□⊡₀
Op  ← °□⊡₁
R   ← °□⊡₂
Out ← °□⊡₃

Process ← (
  ⊸⊃(Out|Op|∩⌟get ⊃L R)
  insert ⊙⨬(↧|↥|≠)
)

KeepReady ← ▽◡≡⌟(/× has □₂⊃L R)

P₁ ← (
  ⊙(⍜⍉⍜⊡₁⊗|{"AND" "OR" "XOR"})
  ⊙◌ ⍥⊸(∧Process KeepReady:)∞
  °⋯⊏⍏ ∩⌞▽⊸≡◇(=@z⊢) °map
)

# Full Adder Circuit
# In: A B C₀
# Out: Sum C₁
# G₀:  A   XOR  B   →  V₀
# G₁:  A   AND  B   →  V₁
# G₂:  V₀  AND  C₀  →  V₂
# G₃:  V₀  XOR  C₀  →  Sum
# G₄:  V₁  OR   V₂  →  C₁

# output bits can only come from XORs
# except last
M₁ ← /×[⊃(
  | ¬≍End Out
  | ¬≍"XOR"Op
  | ∊⊓Out@z
  )]

# XORs must involve at least one
# input or output bit
M₂ ← /×[⊃(
  | ≍"XOR"Op
  | ¬/↥∊"xyz"Out
  | ¬/↥∊"xyz"L
  | ¬/↥∊"xyz"R
  )]

M₃ ← ↥⊃(
  # result of AND must go to OR
  # except initial
| /×[⊃(
    | ↥∩⌞≍⊓(Out|⊃L R)
    | ×⊓(≍"AND"|¬≍"OR")∩Op
    | ¬↥∩⌞≍"x00" ⊃L R
    )]
  # result of XOR cannot go to OR
| /×[⊃(
    | ↥∩⌞≍⊓(Out|⊃L R)
    | ×⊓(≍"XOR"|≍"OR")∩Op
    )]
)

P₂ ← (
  ▽/↥⊸[⊃(≡M₁|≡M₂|≡/↥⊞M₃.)]
  /$"_,_"⍆≡Out
)

Inputs Wires
⊃⋅P₂ P₁
