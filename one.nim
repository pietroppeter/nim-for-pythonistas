import nimib, nimislides, nbex
import lightning

minSlide(metaprogramming):
  nbText """## 🦸 Metaprogramming

1. Generics
2. Templates
3. Macros (AST)

AST: Abstract Syntax Tree

DSL: Domain Specific Language

> with power comes responsibility
"""
# should I not mention it here?
# we will have example of usage of this feature later  

template all* =
  slidePerformant # change compiles to C to native compilation!
  slideSyntax
  # overload (or skip here?)
  metaprogramming
  slidePragmatic

when isMainModule:
  myInit
  all
  nbSave
