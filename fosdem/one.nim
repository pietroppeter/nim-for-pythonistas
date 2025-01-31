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

      proc inc(c: var Counter) = inc c.val

      var counter = Counter(val: 0)
      echo(counter)

    nbCode:
      # all the following are equivalent:
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
  nbText "(the advantages of OOP without full blown OOP)"
  # add ref to Nim for Pyhton Programmers by ZDSmith at blog.zdsmith.com

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
  slideSyntaxFlexible
  procedureOverloading
  slideInterop

when isMainModule:
  myInit("one")
  all
  nbSave
