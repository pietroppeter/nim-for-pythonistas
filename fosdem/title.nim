import nimib except toJson
import nimislides, nbex

template titleSlide* =
  slide(slideOptions(imageBackground="../crown.webp")):
    # hacky value for bottom since I do not understand boxes
    divStyled("font-size:1.5rem;"):
      discard

  slide(slideOptions(imageBackground="../crown.webp")):
    divStyled("background-color:rgb(161, 45, 148);"):
      h1Color(nimYellow): "Nim for Pythonistas"
      h2Color(nimYellow): "FOSDEM, Brussels, Feb 2nd 2025"
      spanColor(blueForFosdem): "github.com/pietroppeter/nim-for-pythonistas"

when isMainModule:
  myInit("title")
  titleSlide
  nbSave