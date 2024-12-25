# Experimental!
~ "git: github.com/amatgil/steal-gift" ~ AoCGet
~ "lib" ~ Ints

I ← AoCGet 2024 11

Op ← memo⍣(1 °0|⋕[⊃↙↘] ÷₂⊸⧻°⋕|×₂₀₂₄)

┌─╴Sol₁
  S ← :°▽ Ints I
  V ← ⊙⊕/+ ◴⟜⊛ ⊙▽ /◇⊂⟜≡◇⧻ ⍚Op
  P ← ⋅/+ ⍥V ⊙S
└─╴

┌─╴Sol₂
  S ← Ints I
  V ← |2 memo(⨬1(/+≡V⊓-₁Op)⊸±)
  P ← /+≡V ⊙S
└─╴
