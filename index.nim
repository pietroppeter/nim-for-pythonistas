import nimib, nimislides

nbInit(theme = revealTheme)
slide:
  nbCode:
    import sequtils, strutils
    let 💬 = "Ciao PyCon"
    for i in -5 .. 5:
      echo 💬.toSeq.mapIt(' '.repeat(abs(i)) & it).join()
nbSave
