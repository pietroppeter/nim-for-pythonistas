import nimib except toJson
import nimislides, nbex

template titleSlide* =
  slide(slideOptions(imageBackground="crown.webp")):
    # hacky value for bottom since I do not understand boxes
    divStyled("font-size:1.5rem;"):
      discard

  slide(slideOptions(imageBackground="crown.webp")):
    divStyled("background-color:rgba(255, 175, 243, 0.5);"):
      h1Color(nimYellow): "Nim for Pythonistas"
      h2Color(pyconGreen): "PyCon 🇮🇹, May 24th 2024"
      spanColor(pythonBlue): "github.com/pietroppeter/nim-for-pythonistas"

when isMainModule:
  myInit("title")
  titleSlide
  nbSave