import nimib, nimislides, nbex
import lightning

template all* =
  slidePerformant
  slideSyntax
  slidePragmatic

when isMainModule:
  myInit
  slidePerformant
  slideSyntax
  # overload (or skip here?)
  # metaprogramming
  slidePragmatic # interop with python
  nbSave
