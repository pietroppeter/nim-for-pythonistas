import nimib, nimislides, nbex
import hello

template title =
  slide(slideOptions(imageBackground="crown.webp")):
    nbText: "### Nim for Pythonistas"

when isMainModule:
  nbInit(theme = revealTheme)
  title
  nbSave
