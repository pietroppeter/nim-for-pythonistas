import nimib, nimislides, nbex
import intro, one

template title =
  slide(slideOptions(imageBackground="crown.webp")):
    h1Color(nimYellow): "Nim for Pythonistas"
    h2Color(pyconRedBrick): "PyCon 🇮🇹, May 24th 2024"
    spanColor(pythonBlue): "github.com/pietroppeter/nim-for-pythonistas"

when isMainModule:
  myInit
  title
  slide:
    intro.all
  slide:
    one.all
  nbSave
