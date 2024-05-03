import nimib, nimislides, nbex

mySlide(helloPyCon):
  nbCode:
    import sequtils, strutils
    let 💬 = "Ciao PyCon"
    for i in -5 .. 5:
      echo 💬.toSeq.mapIt(' '.repeat(abs(i)) & it).join()

when isMainModule:
  nbInit(theme = revealTheme)
  helloPyCon
  nbSave