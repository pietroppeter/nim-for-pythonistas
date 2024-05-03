import nimib, nimislides, nbex
import lightning

minSlide(metaprogramming):
  nbText """## 🦸 Metaprogramming

1. Generics
2. Templates
3. Macros 

It allows to build powerful DSLs

> with power comes responsibility
"""
# should I not mention it here?
# we will have example of usage of this feature later  

template all* =
  slidePerformant
  slideSyntax
  metaprogramming
  slidePragmatic

when isMainModule:
  myInit
  slidePerformant
  slideSyntax
  # overload (or skip here?)
  # metaprogramming
  slidePragmatic # interop with python
  nbSave
