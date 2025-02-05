import nimib except toJson
import nimislides, nbex
import title, intro, agenda, one, two, three, four, conclusions

when isMainModule:
  myInit("index")
  titleSlide
  slide:
    intro.all
  agenda.all
  slide:
    agenda.one
    one.all
  slide:
    agenda.two
    two.all
  slide:
    agenda.three
    three.all
  slide:
    agenda.four
    four.all
  slide:
    conclusions.all
  nbSave