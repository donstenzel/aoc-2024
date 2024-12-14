# Experimental!
~ "git: github.com/amatgil/steal-gift" ~ AoCGet
~ "lib" ~ Ints L!

AoCGet 2024 5

°$"_\n\n_"
≡°□ ∩L!(□Ints)

Rules   ←
Updates ←

IsValid ← /↧⧈₂(∈Rules)
SumMids ← /+≡◇(⊡⌊÷₂⊸⧻)

P₁ ← (
  ▽⊸≡◇IsValid
  SumMids
)

P₂ ← (
  ▽¬⊸≡◇IsValid
  ⍚(⊏⍏⊸⊞(∈Rules⊟).)
  SumMids
)

Updates
⊃P₂ P₁
