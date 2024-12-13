# Experimental!
~ "git: github.com/amatgil/steal-gift" ~ AoCGet
~ "lib" ~ Adj₄

Parse ← ⊜∘⊸≠@\n

P‼ ← /+×⊜⊃⧻^0 -@@ ^1 Parse

P₁ ← P‼(/+|⟜(/+≠⌟⊸≡⌟⬚@\0↻Adj₄))

P₂ ← P‼(
  -¤⊸/↧ # ← this improves speed by alot
  ⧻⍜°⊚⬚0[∩⧈₂(⧻⊜0⊸⍜▽+₃⊸<₀/-)⊸⍉]
| :°⊡)

I ← AoCGet 2024 12
# ⊃P₂ P₁ I

Slow ← P‼(
  ⧻⍜°⊚⬚0[∩⧈₂(⧻⊜0⊸⍜▽+₃⊸<₀/-)⊸⍉]
| :°⊡)

Fast ← P‼(
  -¤⊸/↧ # ← this improves speed by 6x
  ⧻⍜°⊚⬚0[∩⧈₂(⧻⊜0⊸⍜▽+₃⊸<₀/-)⊸⍉]
| :°⊡)

~ "time" ~ Profile!
&p Profile!(Fast|I) 5
&p Profile!(Slow|I) 5
