import nimib, nimislides, nbex

const
  oneShort* = "Easy and fast (+ magic 🧙)"
  oneLong* = "nim is an *easy* to learn and *fast* complement to Python (with magic metaprogramming)"
  twoShort* = "Compiler and types"
  twoLong* = "A smart compiler and a powerful type system can do wonders"
  threeShort* = "Multiple backends (Javascript 🤯)"
  threeLong* = "Having multiple backends is cool and the Javascript one is a game changer"
  fourShort* = "Niche tech"
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
  myInit
  all
  one
  two
  three
  four
  nbSave