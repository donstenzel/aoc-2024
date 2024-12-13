# Experimental!
~ "git: github.com/amatgil/steal-gift" ~ AoCGet

I ← AoCGet 2024 11

Op ← memo⍣(1 °0|⋕[⊃↙↘] ÷₂⊸⧻°⋕|×₂₀₂₄)

┌─╴Sol₁
  S ← :°▽ ⊜⋕⊸≠@\s I
  B ← (⊙⊕/+ ◴⟜⊛ ⊙▽ /◇⊂⟜≡◇⧻ ⍚Op)
  P ← ⋅/+ ⍥B ⊙S
└─╴

┌─╴Sol₂
  S ← ⊜⋕⊸≠@\s I
  V ← |2 memo(⨬1(/+≡V⊓-₁Op)⊸±)
  P ← /+≡V ⊙S
└─╴
