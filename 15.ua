# Experimental!
~ "git: github.com/amatgil/steal-gift" ~ AoCGet
~ "lib" ~ Ints L!

Parse ← :⊓(⊜∘⊸≠@\n|⊗:"><^v"▽⊸≠@\n) °$"_\n\n_"

M ← ⍣(
  $"#_@#" °$"#_@#"
| $"#_.@_#" °$"#_@._#"
| $"#_.@__#" ⊸⊙(≡°@O) °$"#_@_._#"
| $"#_@_#_#" °$"#_@_#_#"
| ∘)

W ← ∧⨬(
  ≡M
| ≡⍜⇌M
| ⍜⍉≡⍜⇌M
| ⍜⍉≡M
)

P₁ ← ⧻⊚≡⍜⊢×₁₀₀⊚⌕@O W

P₂ ← # solved this externally.

AoCGet 2024 15
Parse
⊃P₂ P₁
