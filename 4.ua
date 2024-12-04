# Experimental!
~ "git: github.com/amatgil/steal-gift" ~ AoCGet

Parse ← ⊜∘⊸≠@\n

Occurences ← /+♭≡◇⌕ ⊙¤

Masks₁ ← {
  ◡∩⇌⊸≡¤"XMAS"
  ⊸⇌⊸≡⇌⊸⇌[
    "X\W\W\W"
    "\WM\W\W"
    "\W\WA\W"
    "\W\W\WS"
  ]
}

P₁ ← Occurences Masks₁

Masks₂ ← □₄ ◡∩⍉⊸⇌[
  "M\WM"
  "\WA\W"
  "S\WS"
]

P₂ ← Occurences Masks₂

AoCGet 2024 4

Parse
⊃P₂ P₁
