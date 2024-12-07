# Experimental!
~ "git: github.com/amatgil/steal-gift" ~ AoCGet

Parse ← ≡⇌⍉⊜∘⊸≠@\n

S ← ⇌⍉≡⍣(
  ⍩$"_^#_" °$"_^#_"
| °$"_^_#_"
  ⍩(:⊙⊸(/↧≡=@X)
    ⨬($"__^#_" ⊙≡⋅@X
    | $"_X_#_"))
| ⍩$"_X_" ⊙≡⋅@X °$"_^_"
| ∘)

Sim ← ⍥⍥₄S∞

P₁ ← ⧻⊚⌕@X Sim

InLoop ← ¬/↥[∩₄(∈:@X) ∩⊃⊣⊢⟜⍉]

P₂ ← (
  ⊚⌕@X⊃Sim¤
  wait≡pool(InLoop Sim ⍜⊡⋅@#)
  -₁ ⧻⊚
)

AoCGet 2024 6
Parse
⊃P₂ P₁
