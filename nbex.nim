import nimislides

template mySlide*(ident: untyped, body: untyped) =
  template ident* =
    slide:
      body