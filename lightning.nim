import nimib, nimislides

nbInit(theme = revealTheme)
setSlidesTheme(Solarized)

template slideTitle =
  nbText: "## Nim 👑 for Pythonistas 🐍"


when isMainModule:
  slideTitle
  nbSave
