## content
- I have content notes both in obsidian and github
- [x] dump existing content and notes here

- [ ] slide with embedded nim playground!
  - [ ] also nice for a live demo!

### from obsidian

slide 0: what is Nim?
- for someone who knows programming language terms (everything will be discussed later)
- also my face and say hi and say something about me?
- make the writing appears little by little and the words will also become the TOC, be colored (good exercise for CSS!)
slide 1: syntax
- beloved syntax from Python
- Nim innovates on that with UFCS
- that feature works very well with rest of system
- in general Nim innovates on syntax also because of metaprogramming (show dumpTree: build an interactive app? show how it is almost a superset of python?)
- Ref to go deeper: Araq, Zen of Nim (contrast with zen of Python)
slide 2: compile vs runtime
-  not interpreted, you will miss the REPL at the beginning (there are substitute), but not be confided
- compilation is key to performance
- You do not need to be scared by for loops!
- Example: matrix multiplication
- compiler is a smart assistant (not as good with error messages as Rust’s which in turn gets it from Elm but it depends also on other trade offs)
- compilation is fast
- compilation makes small portable executables
- multiple “backends”
  - JAVASCRIPT!
- further reading:
  - on performance: mratsim (arraymancer, Constantine); treeform (jsony, pixie)
  - on performance and Python interop: the fosdem video by that guy
  - nimpy and nimporter

### from github issue

- focus on syntax
  - starts from Python but innovates (UFCS)
- what is it
  - language for everything
  - safe (statically typed)
  - compiled (performance: arraymancer/crypto, jsony...)
  - power of meta programming (generics, templates, macro)
  - pragmatic: super powerful FFI (some say best C++ FFI around, bindings to unreal)
- do not have to be scared about for loops
- "come for the performance, stay for the ergonomics(/happiness/...)"
  - come for the language and stay for the community
- advantages (pain points of python):
  - safety (through type system and controlled mutability)
  - portability! 
    - self contained executables (small)
    - on embedded
    - on the web! (example of p5nim)
- my favourites things I did:
  - advent of code (start here!)
  - plant app
  - p5nim okazu
- interesting projects?
  - games:
    - indie: Nico
    - for the long run: Turing complete
    - (unreal!)
  - small business: multi platform app (budget with buckets)
  - big business: crash override
  - exercism! (used in production)
- why it might matters to you?
  - start doing open source
  - gentler intro to systems programming (if you do not feel like learning Rust, which has different tradeoffs)
  - slides!

probably I will have to cut out interesting project. in any case I would need to check before for an ok about sharing:
- Stuffe
- Iffy

remember to review the previous presentation about nim by the recurser. :)


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