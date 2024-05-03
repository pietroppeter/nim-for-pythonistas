import nimib, nimislides

const
  pythonBlue* = "#3572A5" # from github/linguist
  pyconRedBrick* = "#F17A5D"
  pyconYellow* = "#F8B03D"
  pyconRed* = "#DB0000"
  pyconViolet* = "#9473B0"
  pyconPurple* = "#FA00FF"
  pyconGreen* = "#219653"
  pyconKeppel* = "#34B4A1"
  pyconWhite* = "#FCE8DE"
  nimYellow* = "#ffe953"

template mySlide*(ident: untyped, body: untyped) =
  template ident* =
    slide:
      body

template minSlide*(ident: untyped, body: untyped) =
  # I can customize with custom background if I do not get to make it complete
  template ident* =
    slide:
      body

template spanColor*(col: string, text: string) =
  nbRawHtml("<span style=\"color:" & col & ";\">" & text & "</span>")

template hColor*(level: int, col: string, text: string) =
  nbRawHtml("<h" & $level & " style=\"color:" & col & ";\">" & text & "</h" & $level & ">")

template h1Color*(col: string, text: string) = hColor(1, col, text)
template h2Color*(col: string, text: string) = hColor(2, col, text)
template h3Color*(col: string, text: string) = hColor(3, col, text)
template h4Color*(col: string, text: string) = hColor(4, col, text)

when isMainModule:
  nbInit(theme=revealTheme)
  slide:
    h1Color("orange"): "H1 Title"
    spanColor("blue"): "hi"
  nbSave
