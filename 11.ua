# Experimental!
~ "git: github.com/amatgil/steal-gift" ~ AoCGet

I ← AoCGet 2024 11

Op ← memo⍣(1 °0|⋕[⊃↙↘] ÷₂⊸⧻°⋕|×₂₀₂₄)

┌─╴Sol₁
  Stones  ← :°▽ ⊜⋕⊸≠@\s I
  Advance ← (⊙⊕/+ ◴⟜⊛ ⊙▽ /◇⊂⟜≡◇⧻ ⍚Op)
  P       ← ⋅/+ ⍥Advance ⊙Stones
  P₁      ← (P 25)
  P₂      ← (P 75)
└─╴

┌─╴Sol₂
  Stones ← ⊜⋕⊸≠@\s I
  V      ← |2 memo(⨬1(/+≡V⊓-₁Op)⊸±)
  P      ← /+≡V ⊙Stones
  P₁     ← (P 25)
  P₂     ← (P 75)
└─╴

~ "time" ~ Profile!
&p Profile!(Sol₁~P₁|) 1
&p Profile!(Sol₁~P₂|) 1

&p Profile!(Sol₂~P₁|) 1
&p Profile!(Sol₂~P₂|) 1
