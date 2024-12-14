# Experimental!
~ "git: github.com/amatgil/steal-gift" ~ AoCGet
~ "lib" ~ Ints L!

Parse ← L!(□Ints)

IsSafe ← ×⊃(≍⊸↻₁±|/××⊃≤₃>₀⌵)⧈-

P₁ ← ⧻⊚ ≡◇IsSafe

P₂ ← ⧻⊚ ≡◇(/∨≡⌟(IsSafe ⍜⊏⋅[])°⊏)

AoCGet 2024 2
Parse
⊃P₂ P₁
