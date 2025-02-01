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

template slideSyntaxFlexible* =
  slide:
    nbText: "### Pythonic Syntax with 🤸‍♂️ Extra Flexibility"
    nbCode:
      type Counter = object
        val: int

      var counter = Counter(val: 0)
      echo(counter)

    nbCode:
      proc inc(c: var Counter) = inc c.val

      # all the following are equivalent 🤸‍♂️
      inc counter  # command syntax
      inc(counter) # function syntax
      counter.inc  # method syntax

      echo counter

    nbTextSmall "\"Concise code is not in conflict with readability, it enables readability\", [Zen of Nim](https://nim-lang.org/blog/2021/11/15/zen-of-nim.html)"

mySlide(procedureOverloading):
  nbText "### Procedure Overloading"
  nbCode:
    type
      Cat = object
      Dog = object
    
    proc speak(c: Cat) = echo "meow"
    proc speak(d: Dog) = echo "woof"

    let
      fuffi = Cat()
      fido = Dog()

    fuffi.speak
    fido.speak
  nbText "💎 the advantages of OOP without full blown OOP 💎"

template slideInterop* =

  slide:
    nbText: "### 🤝 Interop with Python 🐍"
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

    reference "[yglukhov/nimpy](https://github.com/yglukhov/nimpy)"
    reference "[Pebaz/nimporter](https://github.com/Pebaz/nimporter)"


mySlide(effectsTracking):
  nbText "### Functional Powers 🧠 Effects tracking"
  nbRawHtml adaptiveColumnsHtml
  nbRawHtml "<div>"
  nbCode:
    let aGlobal = 42

    proc withSideEffects(x: int): int =
      echo "writing ", x, " in a file"
      "IcanDo.IO".writeFile($x)
      x + aGlobal
    
    echo withSideEffects(624)
    echo "IcanDo.IO".readFile
  nbRawHtml "</div>"

  nbRawHtml "<div>"
  nbText "⠀"
  nbRawHtml "</div>"

  nbRawHtml "<div>"
  nbCode:
    func noSideEffects(x: int): int =
      # in a func compiler will error
      # if you try to do I/O or access global ...
      x + 42

    echo noSideEffects(-42)
  nbRawHtml "</div>"
  nbRawHtml "</div>"

template okazzu* =
  slide(slideOptions(iframeBackground="https://pietroppeter.github.io/nim-ib-lightning-tcp/okazzu.html")):
    discard

mySlide(backends):
  nbText """## compiler backends
- C
- C++
- Objective-C
- Javascript

FFI: Foreign Function Interface
"""
  speakerNote """
- very pragmatic choice
- C is the primary (default) backend
- C++ allows for best-in-class interoperability with C++ libraries (e.g. Unreal engine)
- backends are treated like assembler
- you will use a single backend at the time (but you can use when clauses)
"""

mySlide(metaFormat):
  nbCode:
    import std / strformat
    let here = "Brussels"
    let there = "Milan"
    let minutes = 10*60+15
    echo fmt"from {here} to {there} the train takes {time.float / 60:.2f} hours"

template all* =
  slidePerformant # change compiles to C to native compilation!
  slideSyntaxFlexible
  procedureOverloading
  effectsTracking
  # metaprogramming one strformat
  slideInterop
  # metaprogramming two karax js backend
  backends
  okazzu

when isMainModule:
  myInit("one")
  import std / strformat # move outside of nbCode
  nbCode:
    let
      (a, b) = ("Brussels", "Milan")
      h = (10*60+15).float / 60

    echo fmt"from {a} to {b} the train takes {h} hours"
  nbSave
