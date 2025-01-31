import nimib, nimislides, nbex
import quotes

template helloFosdemAnimated* =
  import sequtils, strutils
  autoAnimateSlides(4):
    nbCode:
      let 💬 = "Hi Fosdem"
      for i in -5 .. 5:
        echo 💬.toSeq.mapIt(' '.repeat(abs(i)) & it).join()
    showText(@[
      ({1.int255, 2, 3, 4}, "Nim is a"),
      ({3.int255, 4}, " statically typed and compiled<br>"),
      ({2.int255, 3, 4}, " systems"),
      ({1.int255, 2, 3, 4}, " programming language"),
      ({4.int255}, "<br>good for everything"),
    ])

template helloPyMiAnimated* =
  import sequtils, strutils
  autoAnimateSlides(4):
    nbCode:
      let 💬 = "Ciao PyMi"
      for i in -5 .. 5:
        echo 💬.toSeq.mapIt(' '.repeat(abs(i)) & it).join()
    showText(@[
      ({1.int255, 2, 3, 4}, "Nim is a"),
      ({3.int255, 4}, " statically typed and compiled<br>"),
      ({2.int255, 3, 4}, " systems"),
      ({1.int255, 2, 3, 4}, " programming language"),
      ({4.int255}, "<br>good for everything"),
    ])

template meNotAnimated* =
  slide:
    nbText "## Me 👨‍👩‍👧"
    nbText "🧮 (applied) Mathematician"
    nbText "🐍 Pythonista"
    nbText "🍸 Python Milano and PyData Milan: [milano.python.it](milano.python.it)"
    nbText "🧑‍🔬 Data Scientist @ AgileLab"
    nbText "👑 [HN: Programming Language Underdog (2018)](https://totallywearingpants.com/posts/nim-underdog/)"
    nbText "🐙 Recurse Center: [recurse.com](recurse.com)"

template pyconitVideo* =
  slide:
    nbImage "pyconit.png"

template all* =
  helloPyMiAnimated
  meNotAnimated
  beazley
  pyconitVideo

template allFosdem* =
  helloFosdemAnimated
  meNotAnimated
  beazley
  pyconitVideo

when isMainModule:
  myInit("intro")
  allFosdem
  nbSave
