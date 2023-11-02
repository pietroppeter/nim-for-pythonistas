import nimib, nimislides

nbInit(theme = revealTheme)
setSlidesTheme(Solarized)

template slideTitle =
  slide:
    bigText: "Nim 👑 for Pythonistas 🐍"
    nbText: "[github.com/pietroppeter/nim-for-pythonistas](https://github.com/pietroppeter/nim-for-pythonistas)"

template reference(text: string) =
  nbText: text

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

      column:
        nbText: "⠀" # https://www.compart.com/en/unicode/U+2800
      column:
        #nbText: "Indentation based syntax that fits Nim's macro system"
        nbCode:
          var g = initGrid()
          show g
        nbCode:          
          g.update
          g.show
        nbCode:
          update(g)
          show g
    reference "[Zen of Nim (2021)](https://nim-lang.org/blog/2021/11/15/zen-of-nim.html)"

template slidePerformant =
  slide:
    nbText: "### Nim is Performant"

template slidePragmatic =
  slide:
    nbText: "### Nim is Pragmatic"

template slidePortable =
  slide:
    nbText: "### Nim is Portable"

template slideProductive =
  slide:
    nbText: "### Nim is Productive"

template slideSource =
  slide:
    nbText: "### Slides source"
    nbText: "```nim\n" & nb.source & "\n```\n"
    reference "[nimislides by Hugo]()"

when isMainModule:
  when false:
    slideTitle
    slideWhatIsNim 
    slideSyntax
  slidePerformant
  slidePragmatic
  slidePortable
  slideProductive
  slideSource
  nbSave
