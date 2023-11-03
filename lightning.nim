import nimib, nimislides

template slideIframe*(url: string) =
  nbRawHtml: "<section data-background-iframe=\"" & url & "\" data-background-interactive></section>"

template slideIframeFromNblog*(filename: string) =
  slideIframe("https://pietroppeter.github.io/nblog/drafts/" & filename & ".html")

# small text
template addNbTextSmall* =
  nb.partials["nbTextSmall"] = "<small>" & nb.partials["nbText"] & "</small>"
  nb.renderPlans["nbTextSmall"] = nb.renderPlans["nbText"]

template nbTextSmall*(text: string) =
  nbText: text
  nb.blk.command = "nbTextSmall"

template slideTitle =
  slide:
    bigText: "Nim 👑 for Pythonistas 🐍"
    nbText: "[github.com/pietroppeter/nim-for-pythonistas](https://github.com/pietroppeter/nim-for-pythonistas)"
    nbText: "_WIP for PyCon🇸🇪 Nov 9-10_"

template reference(text: string) =
  nbTextSmall: text

template slideWhatIsNim =
  slide:
    nbText: "## What is Nim"
    columns:
      column:
        nbCode:
          let message = "Hi_Recursers!"
          for i in 0 ..< message.len:
            echo message[0 .. i]
      column:
        nbText: "Nim is a" &
        "<br>multi-paradigm" &
        "<br>(imperative," &
        "<br>functional," &
        "<br>object-oriented)" &
        "<br>statically typed" &
        "<br>compiled" &
        "<br>programming language" &
        "<br>for everything"
    reference "[A Programming Language Underdog (2018)](url.info)" # small

template slideAlternativeToRust =
  slide:
    nbText: "_(an alternative to Rust)_" # have it appear later and small
    # with different tradeoffs

template slideSyntax =
  slide:
    nbText: "### Pythonic Syntax with Superpowers"
    columns:
      column:
        nbCode:
          type
            Grid = array[3, array[3, Cell]]
            Cell = enum X, O

          func initGrid: Grid =
            [[X,O,X],[O,X,O],[X,O,X]]

          proc show(g: Grid) =
            for row in g:
              echo row
          
          proc update(g: var Grid) =
            for i in g.low .. g.high:
              for j in g[i].low .. g[i].high:
                g[i][j] = if g[i][j] == X: O else: X
        nbTextSmall: "- syntax fits well with **metaprogramming**\n" &
        "- UFCS (Uniform Function Call Syntax)"
        nbTextSmall: "[Zen of Nim (2021)](https://nim-lang.org/blog/2021/11/15/zen-of-nim.html)"

      column:
        nbText: "⠀" # https://www.compart.com/en/unicode/U+2800
      column:
        #nbText: "Indentation based syntax that fits Nim's macro system"
        nbCode:
          var g = initGrid()
          show g # command
        nbCode:          
          g.update # method
          g.show
        nbCode:
          update(g) # function
          show(g)
    

template slidePerformant =
  slide:
    nbText: "### Performant: compiles to C"
    nbText: "_todo: matrix multiplications_"
    #nbText: "_came for the performance, stayed for the ergonomics_"

template slidePragmatic =
  slide:
    nbText: "### Interop with Python"
    reference "[nimporter (based on nimpy)](https://github.com/Pebaz/nimporter)"
    #slide:
    #  slideIframe "https://github.com/Pebaz/nimporter"

template slidePortable =
  slide:
    nbText: "### Compiles to Javascript"
    nbText: "nim produces small native executables and "
    reference "[🌱✨ plant app](https://pietroppeter.github.io/nblog/drafts/plant_app.html?utm_source=github-pietroppeter)"    
    #slide:
    #  nbText: ""
    #  slideIframeFromNblog("plant_app")

template slideEverything =
  slide:
    nbText: "### For everything"
    unorderedList:
      listItem: nbText"gamedev: nico, godot bindings (Turing Complete)"
      listItem: nbText"langdev: arturo, min"

template slideSource =
  slide:
    nbText: "### Slides source"
    nbText: "```nim\n" & nb.source & "\n```\n"
    reference "[nimislides by Hugo]()"

when isMainModule:
  nbInit(theme = revealTheme)
  setSlidesTheme(Solarized)
  addNbTextSmall

  when false:
    discard
  slideTitle
  slideWhatIsNim 
  slideAlternativeToRust
  slideSyntax
  slidePerformant
  slidePragmatic
  slidePortable
  #slideEverything
  #slideProductive
  slideSource
  nbSave
