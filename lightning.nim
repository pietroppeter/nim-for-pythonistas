import nimib, nimislides

nbInit(theme = revealTheme)
setSlidesTheme(Moon)

template slideTitle =
  nbText: "## Title"


when isMainModule:
  slideTitle
  nbSave
