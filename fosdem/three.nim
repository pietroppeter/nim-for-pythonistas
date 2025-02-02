import nimib, nimislides, nbex

mySlide(easierOpenSource):
  nbText "### Easier Open Source 🎋"
  nbText "1. Idea"
  nbCode:
    import nimoji
    echo "I :heart: :pizza: and :beer:".emojize
  nbText """2. Code

```nim
nimble init # ...
```

3. Publish

```nim
nimble publish # opens a PR to a packages.json
```

"""

template easierOpenSourceAnimated* =
  import nimoji
  autoAnimateSlides(5):
    showFrom(1):
      nbText "### Easier Open Source 🎋"
    showFrom(2):
      nbText "1. Idea"
    showFrom(3):
      nbCodeSkip:
        import nimoji
        echo "I :heart: :pizza: and :beer:".emojize
      nbText "```\nI ❤️ 🍕 and 🍺\n```"
    showFrom(4):
      nbText """
2. Code

```nim
nimble init # ...
```
"""
    showFrom(5):
      nbText """
3. Publish

```nim
nimble publish # opens a PR to a packages.json
```

"""



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
  slide(slideOptions(iframeBackground="../hello.html")):
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

    reference "[nimislides](), thanks Hugo!💘"

template plantApp* =
  slide(slideOptions(iframeBackground="../plant_app.html")):
    discard

template nimibLand* =
  slide:
    nbText "## Nimib(Land) 🐳"

template nimibPyscript* =
  slide(slideOptions(iframeBackground="bunny.html")):
    discard



template all* =
  easierOpenSourceAnimated
  nimibLand
  plantApp
  nimibLiterate
  nimibShow
  nimiSlides
  nimibPy
  nimibPyShow
  nimibPyscript

when isMainModule:
  myInit("three")
  all
  nbSave
