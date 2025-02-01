import nimib, nimislides, nbex

const
  oneShort = "What is Nim?"
  oneLong = """
Nim can be used as a fast and easy to learn complement to Python with a great interoperability and metaprogramming superpowers.

Nim has also a powerful type system, functional features and can compile to Javascript."""
  twoShort = "Why Nim made me a better Pythonista"
  twoLong = """
how I got attracted to Nim coming from Python, the benefits of a niche community,
and how I came out with a deeper appreciation for the Python project and community."""
  threeShort = "How Nim can help you getting more involved in Open Source"
  threeLong = """
how easy it is to create your own open source project with Nim

my open source project, Nimib 🐳
"""

mySlide(all):
  nbText "## Agenda"&
  "\n1. " & oneShort &
  "\n2. " & twoShort &
  "\n3. " & threeShort

template section(number: untyped) =
  mySlide(number):
    nbText "### " & `number Short`
    nbText `number Long`

section(one)
section(two)
section(three)


when isMainModule:
  myInit("agenda")
  all
  one
  two
  three
  nbSave
