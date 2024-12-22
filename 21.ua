# Experimental!
M   ← map:⊓/⊂♭°⊡
Num ← M["789" "456" "123" " 0A"]
Dir ← M[" ^A" "<v>"]

H ← ▽⊙⨬@<@>⟜>₀
V ← ▽⊙⨬@^@v⟜>₀
W ← ⊟⟜⇌⊂⊓V H°⊟

Safe! ← ¬∊+⌟\+⊏⊗⊙(">v<^"A₂|get@ ^0)
Next! ← ⧈₂memo(
  get:^0      # get positions
  W ⊃/-⊢      # get ways and start
  ▽⤚≡⌟Safe!^0 # keep safe ways
  □≡⊂:@A      # add A press
)⊂@A

S ← |2 memo(
  ⨬(⋅⧻          # no further steps → shortest path = length
  | ⊓-₁Next!Dir # get ways to create string
    /+≡◇(/↧≡S)  # sum shortest segments
  )⊸±
)

L ← /+≡◇(/↧≡S) ⊙Next!Num

N ← ⋕▽⊸∊"0123456789"

P! ← /+⊜(×⊃L⋅N ^0)⊸≠@\n

Sample ← $ 029A
         $ 980A
         $ 179A
         $ 456A
         $ 379A

Input ← $ 803A
        $ 528A
        $ 586A
        $ 341A
        $ 319A

⊃P!25 P!2 Input
