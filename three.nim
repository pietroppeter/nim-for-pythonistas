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

slideIframe(plantApp, "https://nimib-land.github.io/nblog/drafts/plant_app.html")

slideIframe(okazzu, "https://pietroppeter.github.io/nim-ib-lightning-tcp/okazzu.html")

mySlide(testForGithubPages):
  nbText "..."

template all* =
  backends
  okazzu
  testForGithubPages
  plantApp
  # example of macro-based DSL: karax?

when isMainModule:
  myInit("three")
  all
  nbSave
