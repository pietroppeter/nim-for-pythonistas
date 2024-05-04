import nimib except toJson
import nimislides, nbex

mySlide(constFizzBuzz):
  nbText "### `const` for compile time evaluation"
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

mySlide(letAndVar):
  nbText "### `let` and `var` for safe mutability"
  columns:
    column:
      nbText """
`let` is a (runtime defined) immutable value

```nim
let x = 1
x = x + 1
# Error: 'x' cannot be assigned to
```
"""
    column:
      nbText "use `var` for a mutable variable"
      nbCode:
        var x = 1
        inc x
        echo x

mySlide(varParameters):
  nbText """### `var` parameters

use `var` for a mutable parameter
"""
  nbCode:
    proc divmod(a, b: int; q, r: var int) =
      q = a div b
      r = a mod b

    var q, r: int

    echo (q, r)
    divmod(8, 5, q, r) # modifies q and r
    echo (q, r)

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

template all* =
  constFizzbuzz # (compile time evaluation) - when?
  letAndVar
  varParameters
  # func (side effects)
  procedureOverloading

  # describe briefly type system (primitive vs structured)
  unchainedExample # maybe I skip it?
  jsonyExample


when isMainModule:
  myInit("two")
  all
  nbSave
