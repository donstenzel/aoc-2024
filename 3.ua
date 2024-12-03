# Experimental!
~ "git: github.com/amatgil/steal-gift" ~ AoCGet

Parse ← /◇⊂ regex "mul\\(\\d{1,3},\\d{1,3}\\)"

P₁ ← /+ ≡◇(× ∩⋕ °$"mul(_,_)")

NearestLower ← ⊣▽⊸≤

# 1st solution
P₂ ← (
  $"don't()do()_don't()do()"
  ⊃(∩(⊚⌕)"do()","don't()"
  | /⊂ ⤚≡◇(⊚⌕) ⊃Parse¤)
  ⤙⊓∩¤◌
  ▽≡(<⊃(NearestLower|NearestLower⊙◌))
  P₁
)

# 2nd solution 💕
P₂ ← (
  ▽⬚1\∨ -⊸∩⌕"don't()","do()"
  P₁ Parse
)

AoCGet 2024 3

⟜Parse
⊓P₂ P₁
