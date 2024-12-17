# Experimental!

Adj₄ ← ⍉⊟°ℂ⁅ⁿ⇡4i
Adj₈ ← ⍉⊟°ℂ⁅ⁿ÷₂⇡8i

Repr! ← (◇repr⊢)^!^0
Sig!  ← (◇repr⋅⊢)^!^0

# apply F to each line
L! ← ⊜^0⊸≠@\n
# apply F to each paragraph
P! ← ⊜^0¬⊸⦷"\n\n"

# extracts integers from given text. they
# can be seperated by anything other than `-`
# ints ? text
Ints ← ⊜⋕⊸∈"-0123456789"

Mean   ← ÷⧻⟜/+
Median ← ÷₂/+⊏⊟⊃⌊⌈÷₂-₁⊸⧻⍆
StdDev ← √⍜⌅Mean(ⁿ₂-) .

# Some time related stuff
┌─╴Time
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
    ⊃(⁅₃ × ⁿ:1000 ¯|get: Order)
    $"__s"
  )
  
  Image ← ⬚(÷₁₀₀ 14_16_23) layout {30 ∞_∞ ÷₁₀₀ 100_62_39}
  
  # Expects a function pack with 2 functions.
  # The first function is to be timed,
  # while the second represents the input.
  # The resulting function takes the amount
  # of repetitions to run.
  Profile‼ ←^ (
    ◠(°⊟₃⍉≡$"─_─" $"_ _")°□₂
    $$ [⍥(⍜now(◌{_})_)].
    $$ ∩₃FmtTime ⊃(Mean|Median|StdDev)
    $$ ⤙⊙⊙⊙◌
    $$ $$ ╭───┬─_─╮
    $$ $$ │ ◷ │ _ │
    $$ $$ ╰───┼─_─╯
    $$ $$     ├╴⍥ \_
    $$ $$     ├╴x̄ \_
    $$ $$     ├╴μ \_
    $$ $$     ╰╴σ \_
  )
└─╴

# Expects a function pack with 2 functions.
# The first function is to be timed,
# while the second represents the input.
# The resulting function takes the amount
# of repetitions to run.
◷‼ ← Time~Profile!!^0^1
