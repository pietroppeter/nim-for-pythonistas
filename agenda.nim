import nimib, nimislides, nbex

const
  oneShort* = "Easy and fast (+ superpowers 🦸)"
  oneLong* = "nim is an *easy* to learn and *fast* complement to Python (with metaprogramming 🦸)"
  twoShort* = "Compiler (and types)" # add more about safety
  twoLong* = "A smart compiler and a powerful type system can give you safety without compromising expressivity"
  threeShort* = "Multiple backends (Javascript 🤯)"
  threeLong* = "Having multiple backends is cool and<br>the Javascript one is a game changer"
  fourShort* = "A Niche tech (and me)"
  fourLong* = "Why should I invest in a niche tech?"

mySlide(all):
  nbText "## Agenda"&
  "\n1. " & oneShort &
  "\n2. " & twoShort &
  "\n3. " & threeShort &
  "\n4. " & fourShort
  speakerNote "- " & oneLong & "\n- " & twoLong & "\n- " & threeLong & "\n- " & fourLong

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