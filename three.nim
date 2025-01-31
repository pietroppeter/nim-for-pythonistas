import nimib, nimislides, nbex

mySlide(backends):
  nbText """## compiler backends
- C
- C++
- Objective-C
- Javascript

FFI: Foreign Function Interface
"""
  speakerNote """
- very pragmatic choice
- C is the primary (default) backend
- C++ allows for best-in-class interoperability with C++ libraries (e.g. Unreal engine)
- backends are treated like assembler
- you will use a single backend at the time (but you can use when clauses)
"""

#slideIframe(plantApp, "https://nimib-land.github.io/nblog/drafts/plant_app.html")
# workaround for CORS problem when serving over github pages:
# slideIframe(plantApp, "plant_app.html")

template plantApp* =
  slide(slideOptions(iframeBackground="plant_app.html")):
    discard

# slideIframe(okazzu, "https://pietroppeter.github.io/nim-ib-lightning-tcp/okazzu.html")

template okazzu* =
  slide(slideOptions(iframeBackground="https://pietroppeter.github.io/nim-ib-lightning-tcp/okazzu.html")):
    discard


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
  metaprogramming
  backends
  okazzu
  plantApp
  # example of macro-based DSL: karax?

when isMainModule:
  myInit("three")
  all
  nbSave
