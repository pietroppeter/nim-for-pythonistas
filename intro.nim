import nimib, nimislides, nbex
import quotes

mySlide(helloPyCon):
  nbCode:
    import sequtils, strutils
    let 💬 = "Ciao PyCon"
    for i in -5 .. 5:
      echo 💬.toSeq.mapIt(' '.repeat(abs(i)) & it).join()
  nbText "Nim is a statically typed and compiled  \nsystems programming language for everything"

minSlide(me):
  nbText "## Me 👨‍👩‍👧"
  speakerNote """
When I mean for Pythonistas, besides having in mind
many of you as target audience, I include also myself.
- I started with Python in the late 90s (received my first computer in the early 90s)
- while in University (studied math) I put aside Python for Matlab
- when starting to work I went back to it and rekindled my first love
- worked for a number of years as data scientist
- almost 6 years ago, I stumbled on Nim on HN
- in an article called "A Underdog Programming Language (Sep 2018)"
- I am a sucker for the underdog story
- got curious and fell in love very quickly (also thanks to Advent of Code)
- used it to improve my skills, including my python skills
- and to do something different from what I did at work
- more software engineer kind of stuff, and more low level (like writing a parser)
- have been thinking a lot on how it impacted myself as a pythonista
  (and comparisons nim/python)
- Python Milano and PyData Milano meetups
- one of the odd things that happened: nim pushed me to become more of a pythonista
"""

minSlide(therapy):
  nbText "## Therapy"
  speakerNote """
This could also serve as a therapy session for our relation
with Python and its future, in case you happen to need one
(add quotes from twitter)
"""

minSlide(likePython):
  nbText """## 3 things I like about Python 🐝
- Accessibility
- Playfulness
- Everything
"""

minSlide(strugglePython):
  nbText """## 3 things I struggle with Python 🙊
- Abstraction
- Portability
- Errors
"""

template all* =
  helloPyCon
  me
  Beazley
  therapy
  likePython
  strugglePython

when isMainModule:
  myInit
  helloPyCon
  me
  Beazley
  therapy
  likePython
  strugglePython
  nbSave
