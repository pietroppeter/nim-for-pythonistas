import nimib, nimislides, nbex
import intro, agenda, one, three, four, conclusions

template title =
  slide(slideOptions(imageBackground="crown.webp")):
    h1Color(nimYellow): "Nim for Pythonistas"
    h2Color(pyconRedBrick): "PyCon 🇮🇹, May 24th 2024"
    spanColor(pythonBlue): "github.com/pietroppeter/nim-for-pythonistas"

when isMainModule:
  myInit("index")
  title
  slide:
    intro.all
  agenda.all
  slide:
    agenda.one
    one.all
  slide:
    agenda.two
  slide:
    agenda.three
    three.all
  slide:
    agenda.four
    four.all
  slide:
    conclusions.all
  nbSave
