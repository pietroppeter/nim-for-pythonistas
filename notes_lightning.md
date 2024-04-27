## rushing it

- [x] title
- [x] what is nim
- [x] syntax
- [ ] performant
- [ ] pragmatic: interop with Python + FFI
- [ ] portable: compiles to js
- (productive)
- [ ] what next?

## slides

- [x] 0 slide title
- [ ] 0.5 disclaimer slide 
  (last, maybe I do not even need a slide, and maybe it should be a last slide)
  - not happy with the leadership, especially recent facts, lead me to explore other languages
  - struggled a lot whether or not to give this presentation and in general to promote Nim
  - in the end I decided coding in Nim does give me Joy and I can make my "Happy place for Nim" here at RC
  - _feedback_: on the fence how to approach this in PyCon SE next week
- [x] 1 what is Nim
  - [x] proglang description
    - a multi paradigm (imperative, functional, object-oriented)
      statically typed compiled programming language
      for everything      
  - pragmatic: super powerful FFI (some say best C++ FFI around, bindings to unreal)
  - [ ] efficient, expressive, elegant
  - link to Programming Language Underdog (2018)
    - mention that references will not be discussed
- [ ] 1.5 alternative to Rust
  - an alternative to Rust (different tradeoffs)
    - talk about memory management
- [ ] 2 syntax as in Python (+ UFCS!)
  - beloved syntax from Python
  - Nim innovates on that with UFCS
  - that feature works very well with rest of system
  - in general Nim innovates on syntax also because of metaprogramming (show dumpTree: build an interactive app? show how it is almost a superset of python?)
  - Ref to go deeper: Araq, Zen of Nim (contrast with zen of Python)
- [ ] 3 statically typed and compiled
  -  not interpreted, you will miss the REPL at the beginning (there are substitute), but not be confided
  - compilation is key to performance
  - You do not need to be scared by for loops!
  - Example: matrix multiplication
  - safety (through type system and controlled mutability)
  - compiler is a smart assistant (not as good with error messages as Rust’s which in turn gets it from Elm but it depends also on other trade offs)
  - compilation is fast
  - compilation makes small portable executables
  - multiple “backends”
    - JAVASCRIPT!
- [ ] performant: don't be scared of for loops
  - on performance: mratsim (arraymancer, Constantine); treeform (jsony, pixie)
  - on performance and Python interop: the fosdem video by that guy
  - refs: treeform (jsony), mratsim (arraymancer)
- "come for the performance, stay for the ergonomics(/happiness/...)"
  - come for the language and stay for the community
- [ ] portable: executables + JS!
  - JS: plant app
- [ ] pragmatic: FFI, does not get in the way
  - python interop!
    - nimpy and nimporter
  - ref deech at strange loop
- [ ] metaprogramming (generics, templates, macros)
- [ ] relevant projects
- [ ] where to start?
  - [ ] talk about playground before or here?
- [ ] slide with embedded nim playground!
  - [ ] also nice for a live demo!
- interesting projects for recursers
  - langdev: arturo, min
  - gamedev: nico, godot, raylib, unreal, ...
  - creative coding: p5nim (me)
    - japanese
  - embedded: ratel, ...
  - web: karax, happyx, prologue, ...
  - me: literate programming (nimib)
  - hugo: slides (based on nimib)
- notable usages
  - exercism
  - nitter
  - turing complete
  - iffy: budget with buckets
  - crash override (and in general in security)
- notable recurser:
  - zach!
- why it might matters to you?
  - start doing open source
  - gentler intro to systems programming (if you do not feel like learning Rust, which has different tradeoffs)
  - slides!
- for recurser:
  - offer to pair program
    - e.g. tic tac toe
    - CSS and NLP stuff...

nice to haves:
- [ ] CSS exercise (or reveal.js is enough?): make words appear one by one? 

## content

- I have content notes both in obsidian and github
- [x] dump existing content and notes here
- [x] review content

## setup

- [x] minimal setup
- [x] change vs code theme
- [x] pick a theme: solarized
  - I prefer a light theme for remote presentation
  - [ ] build a theme selector?
    - [ ] open a PR for nimislides?
      - not needed! pick the theme here: https://revealjs.com/themes/

## workflow improvements todo

- create a template for my slides
- vs code specific: started using terminal in the tab (switching tab does not work from terminal tab though)
- vs code specific: nimiboost not working , why?
- vs code specific: let's change vs code theme, which was the one from Sarah Drasner?
  - night owl! https://marketplace.visualstudio.com/items?itemName=sdras.night-owl
    - [x] change my default vs code theme to this!