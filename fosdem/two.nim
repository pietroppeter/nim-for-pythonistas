import nimib, nimislides, nbex

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

template strugglePythonAnimated* =
  threethingsAnimated(
    "## 3 things I struggle with Python 🙊",
    "Abstraction",
    "Portability",
    "Errors",
    reverse = true
  )

template quoteSlide(who: string, what: string, ident: untyped) =
  mySlide(ident):
    nbText: "> " & what & "\n\n" & who

quoteSlide("David Beazley, March 2023", """sometimes people ask me "what can I do to improve my Python skills?" Much to their surprise, I often suggest doing a project in a completely different language or outside of their area of expertise. I think the main benefit of doing this is that you'll often see a completely different way of thinking about a problem that you can bring home to your own projects.""", 
beazley)

quoteSlide("Guido Van Rossum, King's Day Speech, 2016", """I believe the most important idea is that Python is developed on the Internet, entirely in the open, by a community of volunteers (but not amateurs!) who feel passion and ownership.""", 
guidoPythonMainIdea)

mySlide(nicheCommunity):
  nbText "### Niche community 💌"

mySlide(colorLanguage):
  nbText "### Color of a Language 🎨"
  columns:
    column:
      nbImage "../languages-color.png"
      nbText "[forum.nim-lang.org](https://forum.nim-lang.org/t/6350#39982)"
    column:
      nbImage "https://github.com/PMunch/colourfinder/raw/master/goodcolours.png"

template all* =
  beazley

  likePythonAnimated # low floor, no ceiling
  strugglePythonAnimated

  nicheCommunity
  colorLanguage

  guidoPythonMainIdea

when isMainModule:
  myInit("two")
  all
  nbSave
