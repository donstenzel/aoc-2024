# Experimental!

Repr! ← (◇repr⊢)^!^0
Sig!  ← (◇repr⋅⊢)^!^0

Mean   ← ÷⧻⟜/+
StdDev ← √⍜⌅Mean(ⁿ₂-) .

# maps log₁₀₀₀ to prefix
Order ← map ≡°⊟[
  {3 @G}
  {2 @M}
  {1 @K}
  {0 ""}
  {¯1 @m}
  {¯2 @µ}
  {¯3 @n}
]

# formats a number in seconds with magnitude
# str ? num
FmtTime ← (
  ⍜⌵↧₃⌊⊸ₙ₁₀₀₀
  ⊃(⁅₃ × 𝄈ⁿ1000 ¯|𝄈get Order)
  $"__s"
)

# Time‼nF will print the mean time and standard
# deviation of n repetitions of F
Time‼ ← (
  ⍥(⊂⊙⍜now(◌◡{^1}))^0 []
  ∩FmtTime ⊃Mean StdDev
  Repr!^1 ^0
  $"_ ×_"
  °⊟₃⍉≡$"─_─"
  $$ ╭───┬─_─╮
  $$ │ ◷ │ _ │
  $$ ╰───┼─_─╯
  $$     ├╴x̄ _
  $$     ╰╴σ _
)

◷‼ ← Time‼^0^1

T₅!   ← Time‼5^0
T₁₀!  ← Time‼10^0
T₅₀!  ← Time‼50^0
T₁₀₀! ← Time‼100^0

# layouts the result of Time‼.
Image ← ⬚(÷₁₀₀ 14_16_23)layout {30 ∞_∞ ÷₁₀₀ 100_62_39}
