import nimib, nimislides, nbex

template quoteSlide(who: string, what: string, ident: untyped) =
  mySlide(ident):
    nbText: "> " & what & "\n\n" & who

quoteSlide("David Beazley, March 2023", """sometimes people ask me "what can I do to improve my Python skills?" Much to their surprise, I often suggest doing a project in a completely different language or outside of their area of expertise. I think the main benefit of doing this is that you'll often see a completely different way of thinking about a problem that you can bring home to your own projects.""", 
Beazley)

quoteSlide("Guido Van Rossum, King's Day Speech, 2016", """I believe the most important idea is that Python is developed on the Internet, entirely in the open, by a community of volunteers (but not amateurs!) who feel passion and ownership.""", 
GuidoPythonMainIdea)

when isMainModule:
  myInit("quotes")
  Beazley
  GuidoPythonMainIdea
  nbSave
