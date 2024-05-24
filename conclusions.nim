import nimib, nimislides, nbex
import quotes

minSlide(notAConclusion):
  nbText """## Conclusions

To improve as a programmer:
"""
  unorderedList:
    listItem:
      nbText "✨ new language!"
    listItem:
      nbText "🗻 new domain!"
    listItem:
      nbText "👑 Nim?"
    listItem:
      nbText "🐣 Niche?"

template all* =
  notAConclusion
  GuidoPythonMainIdea

when isMainModule:
  myInit("conclusions")
  all
  nbSave
