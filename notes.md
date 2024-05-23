issue nimislides:
- had to use import conversions instead of import ./[conversions]

## fixing stuff after dry run at "assaggi di pycon""

- [x] title

improve intro slides (write script and time it faster (5min?))
- [ ] me (add a few lines, improve speaker notes)
- [x] animate the 3 properties slide
- [ ] script and time it

improve conclusion:
- [ ] new conclusion slide

### from issue

given yesterday's dry run:
- overall structure and content is fine
- need to practice more and refine first intro part to go quicker and say fewer things
  - me slide: python clicked for me right away, had to program other stuff, when I came back to it I was happy
    - add reference here to programming language underdog 
  - nim clicked me with me right away, surprised in how I could love another language in a similar way on how I love pyton
  - working with nim improved me as pythonista, surprised on which ways I was improved
  - struggle APE: do E first, then P, then A last and explain more clearly
- redo the conclusion making more clear what are the goals: 1) taking an offside trip (like I did) is fine and might improve you in expected ways; 2) nim is a very interesting place to take an offside trip, based on some conditions and decisions about yourself and what you want to do.
- maybe add a slide about making slides with code?

other practical improvements:
- [x] title slide: contrast of colors
- [x] autoanimation for the "therapy slides" (starting with initials)
- a gif for therapy slide?
- [x] autoanimation for the hello slide
- [x] change magic to superpowers (metaprogramming is a superpower)
  - [x] also in that slide, compiles natively (not: to C)
- what do I do with the references? 
- [x] on compiler section emphasis is on safety, not expressivity
- [x] add emojis 🎄👨‍💻 to advent of code slide
- improve the color slide (more references, maybe fragments?)

## outstanding issues

- I have a CORS problem for plant app from pietroppeter to nimib-land! (reveal.js iframe issue)
  - fixed with a hack (copied and pasted html of plant_app in local)

## Thu/Fri May 2/3

- goal: draft of all slides!

all slides:

- title (basquiat's crown) [x]
- intro: motivation and plan
  - hello [x]
  - something about me? (credibilità)
    - minimal draft [x]
  - quote by Beazley (Rilevanza) [x]
  - therapy
    - min [x]
  - 3 things I like about Python: Accessible, Playful, Everything (Soluzione?)
    - min [x]
  - 3 things I (sometimes) suffer with Python: Abstraction, Portability, Errors (Problema?)
    - min [x]
  - temporarily remove
    - elephant in the room: Rust (Stopper?)
      - min 
      - different tradeoffs
    - quote by Guido on Python and Freedom (reinforces the tradeoff message)
      - min
  - agenda (promessa?)
    - min [x]
  - min intro ok [x]
- node 1: nim for pythonistas
  - performance [x]
  - syntax [x]
  - name overload? (link to New York RCer)
  - metaprogramming (3 layers)
    - min [x] 
  - interop with Python [x]
  - min one ok
- node 2: compiler and types
  - compile time vs runtime
  - mutability
  - example metaprogramming (generics): jsony
- node 3: javascript backend
  - multiple backends and FFI
    - min [x]
  - mind blown (p5nim okazzu art)
  - compiles to javascript
  - wrapping js stuff (e.g. p5js)
  - plant app
  - example of metaprogramming (macro): karax
- node 4: a niche tech
  - what is a niche tech
  - zen of python
  - zen of nim
  (- the color of a language)
  - my own open source project
  - nimib
  - nimib.py (advent of code example)
- conclusions
  - (not for now) quote by thopper on programming languages are nice (or not?)
  - not a conclusion, questions [x]
  - finish with most important idea of Python [x]
    - community work is very important
  - min ok [x]

slides nice to have:
- improve how quotes are shown
- custom background color in minSlides
- better animation for the APE slides

other slides:
- quote by Guido (use in conclusion)
  - I believe the most important idea is that Python is developed on the Internet, entirely in the open, by a community of volunteers (but not amateurs!) who feel passion and ownership.
  - “Python is an experiment in how much freedom programmers need. Too much freedom and nobody can read another’s code; too little and expressiveness is endangered.”
- where is Nim used? exercism, status, ...
- lignaggio (Wirthiano?)

## Fri Apr 26 + weekend

news of today: this talk is short-listed for EuroPython 2024 (not accepted but in waiting list)

- add links in readme to pycon italy version [x]
  - also update notes (moved to lightning and started a new one) [x]
- collect existing material
  - this repo
  - todo issue (private), dates back to August 2023: https://github.com/pietroppeter/todo/issues/106
  - related
    - nimibLand for RC
    - nim & nimibLand for Crafted Software
- giocare con le carte
