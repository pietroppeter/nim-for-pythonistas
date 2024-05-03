import nimib, nimislides
import std / strformat

template slideIframe*(url: string) =
  nbRawHtml: "<section data-background-iframe=\"" & url & "\" data-background-interactive></section>"

template slideIframeFromNblog*(filename: string) =
  slideIframe("https://nimib-land.github.io/nblog/drafts/" & filename & ".html")

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
    nbText: "_⚡ @ PyCon🇸🇪 2023, Nov 10th_"
    reference: "Pietro Peterlongo from [Python Milano](https://milano.python.it) 🇮🇹"
    speakerNote: """
- slides are on github
- I organize event in Milan come to speak!
- Nim is one of the reason I am here today
"""

template reference*(text: string) =
  nbTextSmall: text

template slideWhatIsNim =
  slide(slideOptions(autoAnimate=true)):
    nbText: "## What is Nim 👑"
    columns:
      column:
        nbCodeInBlock:
          let message = "Hi_PyConSE23!"
          for i in 0 ..< message.len:
            echo message[0 .. i]
      column:
        nbText: "<span data-id=\"nimis\">Nim is a</span>" &
        "<span data-id=\"proglang\"><br>programming language</span>" #&
    reference "[A Programming Language Underdog (2018)](url.info)" # small
    speakerNote: """
- an interesting second (or 3rd or nth) proglang to learn after python
- programming languages are fun!
- nim is my way of procrastinating learning Rust
- it is much more niche, I learn it for fun not for money
"""

  slide(slideOptions(autoAnimate=true)):
    nbText: "## What is Nim 👑"
    columns:
      column:
        nbCodeInBlock:
          let message = "Hi_PyConSE23!"
          for i in 0 ..< message.len:
            echo message[0 .. i]
      column:
        nbText: "<span data-id=\"nimis\">Nim is a</span>" &
        "<span data-id=\"compiled\"><br>compiled</span>" &
        "<span data-id=\"proglang\"><br>programming language</span>"
    reference "[A Programming Language Underdog (2018)](url.info)" # small

  slide(slideOptions(autoAnimate=true)):
    nbText: "## What is Nim 👑"
    columns:
      column:
        nbCodeInBlock:
          let message = "Hi_PyConSE23!"
          for i in 0 ..< message.len:
            echo message[0 .. i]
      column:
        nbText: "<span data-id=\"nimis\">Nim is a</span>" &
        "<span data-id=\"static\"><br>statically typed</span>" &
        "<span data-id=\"compiled\"><br>compiled</span>" &
        "<span data-id=\"proglang\"><br>programming language</span>"
        #"<span data-id=\"everything\"><br>for everything</span>"
    reference "[A Programming Language Underdog (2018)](url.info)" # small

  slide(slideOptions(autoAnimate=true)):
    nbText: "## What is Nim 👑"
    columns:
      column:
        nbCodeInBlock:
          let message = "Hi_PyConSE23!"
          for i in 0 ..< message.len:
            echo message[0 .. i]
      column:
        nbText: "<span data-id=\"nimis\">Nim is a</span>" &
        "<span data-id=\"static\"><br>statically typed</span>" &
        "<span data-id=\"compiled\"><br>compiled</span>" &
        "<span data-id=\"proglang\"><br>programming language</span>" &
        "<span data-id=\"everything\"><br>for everything</span>"
    reference "[A Programming Language Underdog (2018)](url.info)" # small

template slideAlternativeToRust =
  slide:
    nbText: "_(an alternative to Rust)_" # have it appear later and small
    # with different tradeoffs

template slideSyntax* =
  slide:
    nbText: "### Pythonic Syntax with 🦸 Superpowers"
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
        nbTextSmall: "- 🦸 syntax fits well with **metaprogramming**\n" &
        "- 💡 UFCS (Uniform Function Call Syntax)"
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
    

template slidePerformant* =
  slide:
    nbText: "### 🏎️ Performant: compiles to C"
    #nbText: "_todo: matrix multiplications_"
    nbCode:
      const N = 3
      type Matrix = array[N, array[N, int]]

      let
        A = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
        B = [[1, 1, 1], [0, 1, 1], [0, 0, 1]]

      func `*`(a, b: Matrix): Matrix =
        for i in 0 ..< N:
          for j in 0 ..< N:
            for k in 0 ..< N:
              result[i][j] += a[i][k]*b[k][j]

      echo A*B

    reference "[HPC from Python to Nim (Fosdem 2022)](https://archive.fosdem.org/2022/schedule/event/nim_hpcfrompythontonim/)"

const
  tripleBackticks* = "```" # hack to avoid issues when showing source
  bOpen* = "{"
  bClose* = "}"

template slidePragmatic* =

  slide:
    nbText: "### 🤝 Interop with Python"
    nbText: fmt"""

`fibonacci.nim`
{tripleBackticks}nim
import nimpy

func fib*(n: int): int {bOpen}. exportpy .{bClose} =
  if n < 2: 1 else: fib(n - 1) + fib(n - 2)
{tripleBackticks}

`main.py`
{tripleBackticks}python
import nimporter
from fibonacci import fib

print(fib(10))
{tripleBackticks}

{tripleBackticks}
python3 main.py
{tripleBackticks}

{tripleBackticks}
89
{tripleBackticks}

"""

    reference "[nimporter](https://github.com/Pebaz/nimporter)"
    reference "[nimpy](https://github.com/yglukhov/nimpy)"

template slidePortable* =
  slide:
    slide:
      nbText: "### 🤯 Compiles to Javascript!"
      fragment:
        nbText: "### [🌱✨ plant app](https://pietroppeter.github.io/nblog/drafts/plant_app.html?utm_source=github-pietroppeter) 👇"    
  
    slideIframeFromNblog("plant_app")

# WIP
template slideEverything =
  slide:
    nbText: "### For everything"
    unorderedList:
      listItem: nbText"gamedev: nico, godot bindings (Turing Complete)"
      listItem: nbText"langdev: arturo, min"

template slideSource =
  slide:
    nbText: "### 🛷 Slides source"
    nbText: "```nim\n" & nb.source & "\n```\n"
    reference "[nimislides by Hugo Granström](https://github.com/HugoGranstrom/nimiSlides)"

when isMainModule:
  nbInit(theme = revealTheme)
  setSlidesTheme(Solarized)
  addNbTextSmall

  when false:
    discard
  slideTitle
  slideWhatIsNim 
  #slideAlternativeToRust
  slideSyntax
  slidePerformant # compiles to C
  slidePragmatic # FFI: e.g. nimporter and nimpy
  slidePortable # Compiles to Javascript!
  #slideEverything
  #slideProductive
  slideSource
  nbSave
