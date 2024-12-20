# Experimental!
~ "git: github.com/amatgil/steal-gift" ~ AoCGet
~ "lib" ~ L!

# recomputes path with one wall removed per run.
┌─╴Naive
  AoCGet 2024 20
  ⊗:".SE#" L!∘
  ⊢⊚⊸=₁
  Start ↚
  ⊢⊚⊸=₂
  End ↚
  Map ↚
  F   ↚ -₁⧻⊢path(▽<₃ ⬚∞⤚⊡+⌟A₂|≍End) Start
  # this is pretty slow
  P₁ ← (
    -⊃(wait≡⌟pool(F⍜⊡⋅0)⊚⊸=₃|F)
    ⧻▽⊸≥₁₀₀)
└─╴

# much faster. doesn't recompute paths
┌─╴Improved ~ P Parse
  Parse ← ⊃(⊢⊚=@S|≠@#|⊢⊚=@E) L!∘
  M     ↚ ◴/⊂⊞×C₂⊚≤⟜(⊞+.⇡+₁)
  # ? MaxLen Start Map End
  P ← (
    ⊙(⊙⤚⊙∘
      ⊢path(▽⤚⊡+⌟A₂)𝄐≍
      ⟜⍜⊡(⇡⧻))
    ⊃≡(/+⌵)⊞+ M
    -⊙(-≡°⊏⍜♭₂⬚0⊡)
    ⧻⊚≥₁₀₀
  )
└─╴

AoCGet 2024 20
Parse
⊃(P 20|P 2)
