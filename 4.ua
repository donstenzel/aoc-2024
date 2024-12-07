# Experimental!
~ "git: github.com/amatgil/steal-gift" ~ AoCGet

Parse ← ⊜∘⊸≠@\n

Occurences ← ⧻⊚≡◇⌕⊙¤

Rots ← ⍥₃⊸(⍉⇌)

Masks₁ ← (
  "XMAS"
  ⊃(≡(⌝↻⊙$"_\W\W\W")°⊏|¤)
  □₈ ∩Rots)

P₁ ← Occurences Masks₁

Masks₂ ← □₄ Rots[
  "M\WM"
  "\WA\W"
  "S\WS"
]

P₂ ← Occurences Masks₂

AoCGet 2024 4
Parse
⊃P₂ P₁
