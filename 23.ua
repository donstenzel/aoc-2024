# Experimental!
~ "git: github.com/amatgil/steal-gift" ~ AoCGet
~ "lib" ~ L!

┌─╴Slow
  AoCGet 2024 23
  L!°$"_-_"
  L ←
  R ←

  P₁ ← (
    L R
    ⍜⊂⊃(⤙▽⊃(=@t≡⊢)⊛|⧅₃<⇡⧻◴)
    °⊚⊓≡⊟(⍉▽≡/↥⊸∊)
    ⧻⊚=₃/+⊡≡⍉⊏♭₂⇡3_3:
  )

  L R
  ⍜⊂⊃⊛◴
  ⍚⊂°⊏⍚⊂∩⊕□◡:
  Adjs     ←
  Vertices ←

  PSet   ← ⍚⌟▽⋯⇡ⁿ⊙2⊸⧻
  Valid  ← /×≡(◇∊⊏⬚Adjs°𝄐⊟)⧅₂<
  MaxLen ← ⊏⊸(⊢⍖≡◇⧻)

  F ← MaxLen ▽⊸≡◇Valid PSet

  P₂ ← (
    Adjs Vertices
    wait≡◇poolF
    MaxLen
    /$"_,_"⍆◇⊏)

└─╴

P₁ ← (
  ↯∞_2 ⟜(◴▽:) ⊛       # get t values
  ⊕□ °⊟⍉ ⟜°⊚ ⊂⟜≡⇌     # neighbors
  ⊙⍚⌟(▽⤚⊡⧅₂<) ⟜⊏ ⤙⊙⊙◌ # get valid pairs
  ⧻◴≡⍆ /◇⊂⍚≡⌞⊂        # count unique triples
)

F ← (
  /◇⊂⍚⧅<        # size N subgraphs
  ▽⤚≡(/↧♭≡⌞⊏)⟜⊏ # keep cliques
)

P₂ ← /$"_,_"⍆ ⍜⊛(
  ⊂≡⊟.◴⊸♭ ⊂⟜≡⇌ ↯∞_2  # a → a, a → b, b → a
  ⊃(/↥⊕⊃⧻□°⊟⍉|°⊚)    # max size, neighborhoods, adjacency matrix
  ⊢⊙⋅⋅◌ ⍢⋅-₁(=₀⊸⧻◡F) # decrease size until clique exists
)

AoCGet 2024 23
⊜⟜(=@t⊢)¬⊸∊"-\n"
⊃P₂ P₁
