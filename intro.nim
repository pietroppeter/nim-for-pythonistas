import nimib, nimislides, nbex
import quotes

mySlide(helloPyCon):
  nbCode:
    import sequtils, strutils
    let 💬 = "Ciao PyCon"
    for i in -5 .. 5:
      echo 💬.toSeq.mapIt(' '.repeat(abs(i)) & it).join()
  nbText "Nim is a statically typed and compiled  \nsystems programming language for everything"


template helloPyConAnimated* =
  import sequtils, strutils
  autoAnimateSlides(4):
    nbCode:
      let 💬 = "Ciao PyCon"
      for i in -5 .. 5:
        echo 💬.toSeq.mapIt(' '.repeat(abs(i)) & it).join()
    showText(@[
      ({1.int255, 2, 3, 4}, "Nim is a"),
      ({3.int255, 4}, " statically typed and compiled<br>"),
      ({2.int255, 3, 4}, " systems"),
      ({1.int255, 2, 3, 4}, " programming language"),
      ({4.int255}, "<br>good for everything"),
    ])

template meAnimated* =
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

minSlide(me):
  nbText """## Me 👨‍👩‍👧
- Pythonista
- (applied) mathematician
- Data Scientist
- [HN: Programming Language Underdog (2018)](https://totallywearingpants.com/posts/nim-underdog/)
- Python Milano and PyData Milan: [milano.python.it](milano.python.it)
- Recurse Center: [recurse.com](recurse.com) 
"""
  speakerNote """
When I mean for Pythonistas, in my idea audience for this talk
I include myself.
- I have worked the last few years as a Data Scientist
- and I have a Pythonista since the late nineties
- (took a break from Python while studying Math at the university)
- I have started to be recently be much more involved in
  Python community as a Python Milano and PyData Milan co-organizer
- but before that, a few years ago I ran into an article on Hacker News
  that talked about a programming language underdog.
- somehow that encounter and the journey I am going to share
  is responsible for why I have been more active in Python community
- as a final note, I will mention that some of the work for this presentation
  has been prepared while doing a batch at Recurse Center,
  which is a delightful place to improve your skills as a programmer
  surrounded by kind and generous people doing the same
"""

minSlide(therapy):
  nbText "## Therapy"
  speakerNote """
This could also serve as a therapy session for our relation
with Python and its future, in case you happen to need one
(add quotes from twitter)
"""

template therapySpongebob* =
  slide:
    nbImage("therapy_spongebob.gif")

minSlide(likePython):
  nbText """## 3 things I like about Python 🐝
- Accessibility
- Playfulness
- Everything
"""

template threethingsAnimated*(titolo, uno, due, tre: string, reverse=false) =
  autoAnimateSlides(4):
    nbText: titolo
    showText(@[
      ({1.int255, 2, 3, 4}, "- " & uno[0]),
      ((if reverse: {4.int255} else: {2.int255, 3, 4}), uno[1 .. ^1]),
    ])
    showText(@[
      ({1.int255, 2, 3, 4}, "- " & due[0]),
      ({3.int255, 4}, due[1 .. ^1]),
    ])
    showText(@[
      ({1.int255, 2, 3, 4}, "- " & tre[0]),
      ((if reverse: {2.int255, 3, 4} else: {4.int255}), tre[1 .. ^1]),
    ])

template likePythonAnimated* =
  threethingsAnimated(
    "## 3 things I like about Python 🐝",
    "Accessibility",
    "Playfulness",
    "Everything",
  )


template likePythonAnimatedOld* =
  autoAnimateSlides(4):
    nbText: "## 3 things I like about Python 🐝"
    showText(@[
      ({1.int255, 2, 3, 4}, "- A"),
      ({2.int255, 3, 4}, "ccessibility"),
    ])
    showText(@[
      ({1.int255, 2, 3, 4}, "- P"),
      ({3.int255, 4}, "layfulness"),
    ])
    showText(@[
      ({1.int255, 2, 3, 4}, "- E"),
      ({4.int255}, "verything"),
    ])

minSlide(strugglePython):
  nbText """## 3 things I struggle with Python 🙊
- Abstraction
- Portability
- Errors
"""

template strugglePythonAnimated* =
  threethingsAnimated(
    "## 3 things I struggle with Python 🙊",
    "Abstraction",
    "Portability",
    "Errors",
    reverse = true
  )

template all* =
  helloPyConAnimated
  meAnimated
  Beazley
  therapySpongebob
  likePythonAnimated
  strugglePythonAnimated

when isMainModule:
  myInit("intro")
  all
  nbSave
