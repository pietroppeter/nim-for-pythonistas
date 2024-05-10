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

mySlide(colorLanguage):
  nbText "### Color of a Language 🎨"
  columns:
    column:
      nbImage "languages-color.png"
      nbText "[forum.nim-lang.org](https://forum.nim-lang.org/t/6350#39982)"
    column:
      nbImage "https://github.com/PMunch/colourfinder/raw/master/goodcolours.png"

mySlide(nimibLiterate):
  nbText: "### Nimib as 'Literate Programming'"
  nbFile("hello.nim"): """
import nimib

nbInit

nbText "A sample program with _Nimib_"

nbCode:
    echo "hello RC!"

nbSave
"""
  nbText: "`nim r hello`"

slideIframe(nimibShow, "hello.html")

mySlide(nimibPy):
  nbText: """### [Nimib.py]()
"""
  nbFile("hi.py"): """
import nimib as nb

nb.init()

nb.text("Welcome to `nimib.py`!")

message = "hello"

with nb.code():
    print(message)

nb.save()
"""
  nbText: "`python hi.py`"
  speakerNote: """
Thanks to advent of code
"""

slideIframe(nimibPyShow, "https://nimib.land/nimib.py/hi.html")

slideIframe(adventOfCode, "https://pietroppeter.github.io/adventofcode2023/day25/solution.html"):
  nbText "# 🎄👨‍💻"

template all* =
  easierOwnership
  colorLanguage

  growingCulture
  zenOfNim
  ruleTheMole
  
  easierOpenSource
  nimibLiterate
  nimibShow
  nimibPy
  nimibPyShow
  adventOfCode

when isMainModule:
  myInit("four")
  all
  nbSave
