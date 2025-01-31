import nimib, nimislides, nbex

template slidePerformant* =
  slide:
    nbText: "### 🏎️ Performant: compiles natively"
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


template slideSyntaxBug* =
  # does not compile with nim 2.0.8 (and nimiSlides 0.2.6)
  slide:
    nbText: "### Pythonic Syntax with 🦸 Superpowers"
    adaptivecolumns:
      column:
        nbCodeSkip:
          type
            Grid = array[0..2, array[0..2, Cell]]
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

      column:
        nbText: "⠀" # https://www.compart.com/en/unicode/U+2800
      column:
        #nbText: "Indentation based syntax that fits Nim's macro system"
        block:
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

          nbCode:
            var g = initGrid()
            show g # command
          nbCode:          
            g.update # method
            g.show
          nbCode:
            update(g) # function
            show(g)

template slideSyntaxWorkaround* =
  slide:
    nbText: "### Pythonic Syntax with Extra Flexibility"
    nbCode:
      type Counter = object
        val: int

      proc inc(c: var Counter) = inc c.val

      var counter = Counter(val: 0)

      echo counter

      inc counter  # command syntax
      inc(counter) # function syntax
      counter.inc  # method syntax

      echo(counter)

    nbTextSmall: "- 🦸 syntax fits well with **metaprogramming**\n" &
    "- 💡 UFCS (Uniform Function Call Syntax)"

template slideInterop* =

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

template all* =
  slidePerformant # change compiles to C to native compilation!
  slideSyntaxWorkaround
  slideInterop

when isMainModule:
  myInit("one")
  all
  nbSave
