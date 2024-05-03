import nimib except toJson
import nimislides, nbex

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


mySlide(jsonyExample):
  nbText """### [jsony](https://github.com/treeform/jsony)

A fast and direct json <-> type serializer/deserializer

```nim
proc dumpHook*(s: var string, v: char) =
  s.add '"' & v & '"'

proc dumpHook*[T](s: var string, v: seq[T]) =
  s.add '['
  for i, e in v:
    if i != 0: s.add ','
    s.dumpHook(e)
  s.add ']'
```

"""
  nbCode:
    import jsony

    doAssert @['a', 'b', 'c'].toJson() == """["a","b","c"]"""
    doAssert """["a","b","c"]""".fromJson(seq[char]) == @['a', 'b', 'c']

template all* =
  # maybe I start with types (structured + distinct)
  # int and float are kept distinct (avoid errors)
  # for distinct I could give example of unchained!
  # tuple as named tuple!
  constFizzbuzz # (compile time evaluation) - when?
  # let and var (mutability in declaration and parameters)
  # func (side effects)
  # what on type system? object vs ref object? enums? distinct?
  unchainedExample # maybe I skip it?
  # or maybe just an enumeration of type system in two slides (primitive and structured)
  # maybe just what is needed to explain jsony
  jsonyExample


when isMainModule:
  myInit
  all
  nbSave
