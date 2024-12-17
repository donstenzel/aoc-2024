# Experimental!
~ "git: github.com/amatgil/steal-gift" ~ AoCGet
L ~ "lib" ~ Ints

I ← $ Register A: 24847151
    $ Register B: 0
    $ Register C: 0
    $ 
    $ Program: 2,4,1,5,7,5,1,6,0,3,4,0,5,5,3,0

Parse ← ∩Ints °$"_\n\n_"

A ← ⊡₀
B ← ⊡₁
C ← ⊡₂

Combo ← ◿₈⨬∘(⊡-₄)⊸>₃
Div   ← ⍜⊙⋯↘⊃Combo⋅⊡₀
Xor   ← ⍜⋯/≠⊟
Instr ← °⊟↙₂⋅⋅↻

Op ← ⨬(
  ⍜A◌⤙Div
| ⍜B◌⤙(Xor ⊙B)
| ⍜B◌⤙Combo
| ⨬⋅⊙⊙∘⊃⋅⊙∘-₂ ±◡⋅A
| ⍜B◌⤙(Xor ⋅⊃B C)
| ⊃⋅∘(⊂Combo)
| ⍜B◌⤙Div
| ⍜C◌⤙Div
)

Exec ← ⇌ ⋅⊙⋅◌ ⍢(⊙⊙+₂ Op °⊟↙₂◡⋅⋅↻)⋅⋅(>⊙⧻) ⊙([] 0)

P₁ ← /$"_,_" Exec

R ← Exec ⇌[0 0 ∘]

P₂ ← ⊙◌ /↧ ⍥(▽⊸⤚≡(±⊣⦷⊸R) ♭⊞+⇡8×₈)⧻⤙∩¤ 0

Parse I
⊃⋅P₂ P₁
