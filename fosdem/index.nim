import nimib except toJson
import nimislides, nbex
import title, intro, agenda, one#, two, three

when isMainModule:
  myInit("fosdem")
  titleSlide
  slide:
    intro.all
  agenda.all
  slide:
    agenda.one
    one.all
  nbSave