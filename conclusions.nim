import nimib, nimislides, nbex
import quotes

minSlide(notAConclusion):
  nbText """## Not really a Conclusion
- do you feel Nim is Accessible, Playful, "Everything"?
- what about "Abstraction", Portable, "Errors"
- are you more or less curious about Nim?
- how did your Python therapy session go?
- did you change your mind on something from this talk?
"""

template all* =
  notAConclusion
  GuidoPythonMainIdea

when isMainModule:
  myInit("conclusions")
  all
  nbSave
