import nimib, nimislides, nbex
import intro, one, three, four, conclusions

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
  agenda
  slide:
    one.all
  slide:
    three.all
  slide:
    four.all
  slide:
    conclusions.all
  nbSave
