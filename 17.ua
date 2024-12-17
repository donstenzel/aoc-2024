# Experimental!
~ "git: github.com/amatgil/steal-gift" ~ AoCGet
L ~ "lib" ~ Ints

$ Register A: 24847151
$ Register B: 0
$ Register C: 0
$ 
$ Program: 2,4,1,5,7,5,1,6,0,3,4,0,5,5,3,0

∩Ints °$"_\n\n_"
Regs    ←
Program ←

A ← ⊡₀
B ← ⊡₁
C ← ⊡₂

Combo ← ⨬∘(⊡-₄)⊸>₃
Div   ← ⍜⊙⋯↘⊃Combo⋅⊡₀
Xor   ← ⍜⋯/≠⊟
Instr ← °⊟↙₂⋅⋅↻

Op ← ⨬(
  ⍜A◌⤙Div
| ⍜B◌⤙(Xor ⊙B)
| ⍜B◌⤙(◿₈Combo)
| ⨬⋅⊙⊙∘⊃⋅⊙∘-₂ ±◡⋅A
| ⍜B◌⤙(Xor ⋅⊃B C)
| ⊃⋅∘(⊂◿₈Combo)
| ⍜B◌⤙Div
| ⍜C◌⤙Div
)

Exec ← ⇌ ⋅⊙⋅◌ ⍢(⊙⊙+₂ Op °⊟↙₂◡⋅⋅↻)⋅⋅(>⊙⧻)

P₁ ← /$"_,_" Exec Regs [] 0 Program

R ← Exec ⇌⊂0_0 ⊙([] 0)

P₂ ← ⊙◌/↧⍥(▽⊸⤚≡(±⊣⦷⊸R) ♭⊞+⇡8×₈)⧻⤙∩¤ 0 Program

P₂ P₁
