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

template ruleTheMole* =
  slide(slideOptions(iframeBackground="https://forum.nim-lang.org/t/8780")):
    discard

# slideIframe(ruleTheMole, "https://forum.nim-lang.org/t/8780")

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

#slideIframe(nimibShow, "hello.html")
template nimibShow* =
  slide(slideOptions(iframeBackground="hello.html")):
    discard

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

#slideIframe(nimibPyShow, "https://nimib.land/nimib.py/hi.html")
template nimibPyShow* =
  slide(slideOptions(iframeBackground="https://nimib.land/nimib.py/hi.html")):
    discard

#slideIframe(adventOfCode, "https://pietroppeter.github.io/adventofcode2023/day25/solution.html"):
#  nbText "# 🎄👨‍💻"
template adventOfCode* =
  slide(slideOptions(iframeBackground="https://pietroppeter.github.io/adventofcode2023/day25/solution.html")):
    nbText "# 🎄👨‍💻"

template nimislides* =
  slide:
    nbText """## 🛝 Slides with Nim(ib)"""
    nbCodeSkip:
        autoAnimateSlides(7):
          nbText "## Me 👨‍👩‍👧"
          showFrom(3):
            nbText "🐍 Pythonista"
          showFrom(4):
            nbText "🧮 (applied) Mathematician"
          showFrom(2):
            nbText "🧑‍🔬 Data Scientist"
          showFrom(6):
            nbText "👑 [HN: Programming Language Underdog (2018)](https://totallywearingpants.com/posts/nim-underdog/)"
          showFrom(5):
            nbText "🍸 Python Milano and PyData Milan: [milano.python.it](milano.python.it)"
          showFrom(7):
            nbText "🐙 Recurse Center: [recurse.com](recurse.com)"

    reference "[nimislides](), thanks Hugo!💘"
template all* =
  easierOwnership
  colorLanguage

  growingCulture
  zenOfNim
  ruleTheMole
  
  easierOpenSource
  nimibLiterate
  nimibShow
  nimiSlides
  nimibPy
  nimibPyShow
  adventOfCode

when isMainModule:
  myInit("four")
  all
  nbSave
