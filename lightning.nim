import nimib, nimislides

nbInit(theme = revealTheme)
setSlidesTheme(Solarized)

template slideTitle =
  slide:
    bigText: "Nim 👑 for Pythonistas 🐍"
    nbText: "[github.com/pietroppeter/nim-for-pythonistas](https://github.com/pietroppeter/nim-for-pythonistas)"


when isMainModule:
  slideTitle
  nbSave
