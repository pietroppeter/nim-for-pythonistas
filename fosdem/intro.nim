import nimib, nimislides, nbex

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

template meNotAnimated* =
  slide:
    nbText "## Me 👨‍👩‍👧"
    nbText "🧑‍🔬 Data Scientist @ [AgileLab](https://www.agilelab.it/)"
    nbText "🍸 Python Milano and PyData Milan: [milano.python.it](milano.python.it)"
    nbText "👑 [HN: Programming Language Underdog (2018)](https://totallywearingpants.com/posts/nim-underdog/)"
    nbText "🐙 Recurse Center: [recurse.com](recurse.com)"

template pyconitVideo* =
  slide:
    nbImage "../pyconit.png"

template pyconitPromo* =
  slide(slideOptions(imageBackground="pyconit.png")):
    nbText """<p style="font-size: 60px; font-weight: 700; color: #ffe953;">🍝Come to PyCon Italy!🤌</style>"""
    nbText """<p style="font-size: 40px; font-weight: 700; color: #ffe953;">May 28-31, Bologna | pycon.it</style>"""
    nbText "⠀"
    nbText "⠀"
    nbText "⠀"
    nbText "⠀"
    nbText "⠀"
    nbText "⠀"
    nbText "⠀"

template all* =
  helloFosdemAnimated
  meNotAnimated
  pyconitVideo
  pyconitPromo

when isMainModule:
  myInit("intro")
  all
  nbSave
