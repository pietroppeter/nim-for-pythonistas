import nimib, nimislides, nbex

const
  oneShort* = "Easy and fast (+ superpowers 🦸)"
  oneLong* = "nim is an *easy* to learn and *fast* complement to Python (with metaprogramming 🦸)"
  twoShort* = "Compiler (and types)" # add more about safety
  twoAndThreeShort* = "More about Nim (Zen)" # add more about safety
  twoAndThreeLong* = "More about Nim: Compiler, Types, Metaprogramming, Backends/FFI, Zen" # add more about safety
  twoLong* = "A smart compiler and a powerful type system can give you safety without compromising expressivity"
  threeShort* = "Multiple backends (Javascript 🤯)"
  threeLong* = "Having multiple backends is cool and<br>the Javascript one is a game changer"
  fourShort* = "A Niche tech (and me)"
  fourLong* = "Why should I invest in a niche tech?"
  fourIsNewThreeShort* = "A Niche tech (and Open Source)"
  fourIsNewThreeLong* = "Doing Open Source with a niche tech"
  fosdemOne = "What is Nim?"
  fosdemTwo = "Why Nim made me a better Pythonista"
  fosdemThree = "How Nim can help you getting more involved in Open Source"

mySlide(all):
  nbText "## Agenda"&
  "\n1. " & oneShort &
  "\n2. " & twoShort &
  "\n3. " & threeShort &
  "\n4. " & fourShort
  speakerNote "- " & oneLong & "\n- " & twoLong & "\n- " & threeLong & "\n- " & fourLong

mySlide(allFosdem):
  nbText "## Agenda"&
  "\n1. " & fosdemOne &
  "\n2. " & fosdemTwo &
  "\n3. " & fosdemThree

mySlide(allPyMi):
  nbText "## Agenda"&
  "\n1. " & oneShort &
  "\n2. " & twoAndThreeShort &
  "\n4. " & fourIsNewThreeShort

template section(number: untyped) =
  mySlide(number):
    nbText "### " & `number short`
    nbText `number Long`

section(one)
section(two)
section(three)
section(four)

when isMainModule:
  myInit("agenda")
  all
  one
  two
  three
  four
  nbSave
