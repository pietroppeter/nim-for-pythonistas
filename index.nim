import nimib except toJson
import nimislides, nbex
import title, intro, agenda, one, two, three, four, conclusions

when isMainModule:
  myInit("index")
  titleSlide
  slide:
    intro.all
  agenda.allPyMi
  slide:
    agenda.one
    one.all
  slide:
    agenda.twoAndThree
    two.all
    three.all
  slide:
    agenda.fourIsNewThree
    four.all
  slide:
    conclusions.all
  nbSave
