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

# ready means both operands have values
KeepReady ← ▽◡≡⌟(/× has □₂⊃L R)

P₁ ← (
  ⊙(⍜⍉⍜⊡₁⊗|{"AND" "OR" "XOR"}) # convert ops into indices
  ⊙◌ ⍥⊸(∧Process KeepReady:)∞ # propagate values
  °⋯⊏⍏ ∩⌞▽⊸≡◇(=@z⊢) °map # turn sorted z bits into num
)

# Full Adder Circuit
# In: A B C₀
# Out: Sum C₁
# G₀:  A   XOR  B   →  V₀
# G₁:  A   AND  B   →  V₁
# G₂:  V₀  AND  C₀  →  V₂
# G₃:  V₀  XOR  C₀  →  Sum
# G₄:  V₁  OR   V₂  →  C₁

M₁ ← /×[⊃(
  | ∊⊓Out@z   # output bits can only
  | ¬≍"XOR"Op # come from XORs
  | ¬≍End Out # ignore last
  )]

M₂ ← ×⊃(
| ≍"XOR"Op     # XORs must involve at least one
| [⊃(Out|L|R)] # input or output bit
  /×≡(¬/↥∊"xyz")
)

M₃ ← ↥∩⌞×⊃(
| ↥∩⌞≍⊓(Out|⊃L R) # must be correlated
| ×⊃(
  | ×⊓(≍"AND"|¬≍"OR")∩Op # result of AND must go to OR
  | ¬↥∩⌞≍"x00" ⊃L R      # ignore initial
  )
| ×⊓(≍"XOR"|≍"OR")∩Op # result of XOR cannot go to OR
)

P₂ ← (
  ▽/↥⊸[⊃(≡M₁|≡M₂|≡/↥⊞M₃.)] # mask and keep sussy wires
  /$"_,_"⍆≡Out             # sort and format
)

Inputs Wires
⊃⋅P₂ P₁
