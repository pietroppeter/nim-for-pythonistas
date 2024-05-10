import nimib, nimislides, lightning
export addNbTextSmall, tripleBackticks, bOpen, bClose

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

template slideIframe*(ident: untyped, frameAsStr: untyped) =
  template ident* =
    slide(slideOptions(iframeBackground=frameAsStr)):
      discard

template slideIframe*(ident: untyped, frameAsStr: untyped, body: untyped) =
  template ident* =
    slide(slideOptions(iframeBackground=frameAsStr)):
      body

template spanColor*(col: string, text: string) =
  nbRawHtml("<span style=\"color:" & col & ";\">" & text & "</span>")

template hColor*(level: int, col: string, text: string) =
  nbRawHtml("<h" & $level & " style=\"color:" & col & ";\">" & text & "</h" & $level & ">")

template h1Color*(col: string, text: string) = hColor(1, col, text)
template h2Color*(col: string, text: string) = hColor(2, col, text)
template h3Color*(col: string, text: string) = hColor(3, col, text)
template h4Color*(col: string, text: string) = hColor(4, col, text)

template myInit*(sourceFileRel = "my.nim") =
  nbInit(thisFileRel=sourceFileRel, theme=revealTheme)
  setSlidesTheme(Solarized)
  addNbTextSmall

template divStyled*(style: string, body: untyped) =
  nbRawHtml "<div style=\"" & style & "\">"
  body
  nbRawHtml "</div>"

when isMainModule:
  myInit
  slide:
    divStyled("background-color:pink;"):
      h1Color("orange"): "H1 Title"
      spanColor("blue"): "hi"
  nbSave
