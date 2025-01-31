import nimib, nimislides, nbex

const
  one = "What is Nim?"
  two = "Why Nim made me a better Pythonista"
  three = "How Nim can help you getting more involved in Open Source"

mySlide(all):
  nbText "## Agenda"&
  "\n1. " & one &
  "\n2. " & two &
  "\n3. " & three

when isMainModule:
  myInit("agenda")
  all
  nbSave
