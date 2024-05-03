import nimib, nimislides, nbex

mySlide(constFizzBuzz):
  nbText "### Compile time evaluation"
  nbCode:
    import std / [sequtils, strutils]

    func fizzBuzz(n: int): string = 
      case n mod 15
      of 0: "FizzBuzz"
      of 3, 6, 9, 12: "Fizz"
      of 5, 10: "Buzz"
      else: $n
    
    const result = (1 .. 15).toSeq.mapIt(it.fizzBuzz).join()

    echo result

mySlide(unchainedExample):
  nbText """### [Unchained](https://github.com/SciNim/Unchained)

A fully type safe, compile time only units library

```nim
type
  KiloGram = distinct float
  Meter = distinct float
...
```

"""
  nbCode:
    import unchained

    let
      m = 80.kg
      g = 9.81.m•s⁻²
      f = m*g
    doAssert typeof(f) is Newton

    echo f

template all* =
  # maybe I start with types (structured + distinct)
  # int and float are kept distinct (avoid errors)
  # for distinct I could give example of unchained!
  # tuple as named tuple!
  constFizzbuzz # (compile time evaluation) - when?
  # let and var (mutability in declaration and parameters)
  # func (side effects)
  # what on type system? object vs ref object? enums? distinct?
  unchainedExample
  # or maybe just an enumeration of type system in two slides (primitive and structured)
  # maybe just what is needed to explain jsony



when isMainModule:
  myInit
  all
  nbSave
