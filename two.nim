import nimib, nimislides, nbex


template all* =
  # const fizzbuzz (compile time evaluation) - when?
  # let and var (mutability)
  # func (side effects)
  # what on type system? object vs ref object? enums? distinct?
  # or maybe just an enumeration of type system in two slides (primitive and structured)
  # maybe just what is needed to explain jsony
  discard


when isMainModule:
  nbInit(revealTheme)
  nbSave
