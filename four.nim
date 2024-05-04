import nimib, nimislides, nbex


mySlide(zenOfNim):
    nbText: "### Zen of Nim"
    nbText: """
```md
1. Copying bad design is not good design.
2. If the compiler cannot reason about the code,
   neither can the programmer.
3. Don’t get in the programmer’s way.
4. Move work to compile-time:
   Programs are run more often than they are compiled.
5. Customizable memory management.
6. Concise code is not in conflict with readability,
   it enables readability.
7. (Leverage meta programming to keep the language small.)
8. Optimization is specialization:
   When you need more speed, write custom code.
9. There should be one and only one programming language
   for everything.
   That language is Nim.
```
"""

slideIframe(ruleTheMole, "https://forum.nim-lang.org/t/8780")

mySlide(easierOwnership):
  nbText "### Easier ownership 💌"

mySlide(growingCulture):
  nbText "### Growing Culture 🎏"

mySlide(easierOpenSource):
  nbText "### Easier Open Source 🎋"

template all* =
  easierOwnership
  # color of a language?
  # https://forum.nim-lang.org/t/6350#39982

  growingCulture
  zenOfNim
  ruleTheMole
  
  easierOpenSource
  # easier access to open source
  # nimib (and nimib.py)

when isMainModule:
  myInit("four")
  all
  nbSave
