import nimib, nimislides

template mySlide*(ident: untyped, body: untyped) =
  template ident* =
    slide:
      body

template nbTextColor*(col: string, text: string) =
  nbRawHtml("<span style=\"color:" & col & ";\">")
  nbText text
  nbRawHtml("""</span">""")

when isMainModule:
  nbInit(theme=revealTheme)
  slide:
    nbTextColor("red"): "hi"
  nbSave
