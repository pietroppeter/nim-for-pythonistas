import nimib, nimislides, nbex
import hello

template title =
  slide(slideOptions(imageBackground="crown.webp")):
    h1Color(nimYellow): "Nim for Pythonistas"
    h2Color(pyconRedBrick): "PyCon 🇮🇹, May 24th 2024"
    spanColor(pythonBlue): "github.com/pietroppeter/nim-for-pythonistas"

when isMainModule:
  nbInit(theme = revealTheme)
  title
  nbSave
