~ "git: github.com/amatgil/steal-gift" ~ AoCGet

Parse ← ⊜(□⊜⋕⊸≠@\s)⊸≠@\n

IsSafe ← ↧⊃(/↧=⊸⊢±|/↧↧⊃≤₃>₀⌵)≡/-◫₂

P₁ ← /◇+⍚IsSafe

P₂ ← /◇+⍚(/↥≡(IsSafe ⍜↘↘₁)⊙¤°⊏)

AoCGet 2024 2
Parse
⊃P₂ P₁
