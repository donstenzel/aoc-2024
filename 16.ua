# Experimental!
~ "git: github.com/amatgil/steal-gift" ~ AoCGet
~ "lib" ~ Adj₄ L!

Parse ← L!∘
Start ← ⊂₀⊢⊚⌕@S
Goal  ← ≍@E⊡↘₁

Next₁ ← (
  °⊂
  ⊓(◿₄+₂|°⊏Adj₄)
  ∩⌞(↘₁↻)
  ⊙(≠@#⤚⊡+⌟)
  ⊓:⊙[1001 1 1001]
  ⍜⊙□₃⍚⌞▽
  :≡⊂
)

Next₂ ← (
  ⍜°⊂(
    ⊃(⟜⊡:⍉⊟°ℂ⁅ⁿ⇡4i
      ▽⊙⊂:⊙(≠@#⤚⊡+)
    | ⊟∩⌟(⊂◿₄)⊃+₁+₃))
  ↙⊙1_1e3_1e3¯⊸⧻)

Both ← ⧻◴ ≡↘₁ /◇⊂ path(Next₁|Goal)⊸Start Parse

Input ← Start. Parse AoCGet 2024 16

Path!  ← ⧻◴≡↘₁/◇⊂ path(^0|Goal)
First  ← Path!Next₁
Second ← Path!Next₂
~ "lib" ~ ◷‼
# 200ms
&p ◷‼(First|Input) 10
# ~500ms
&p ◷‼(Second|Input) 10
