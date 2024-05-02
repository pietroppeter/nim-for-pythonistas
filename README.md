# nim-for-pythonistas

me introducing nim to pythonistas

## PyCon Italy 2024

Work-in-progress: preparation of 30' talk for PyCon Italy 2024

https://2024.pycon.it/it/event/nim-for-pythonistas

**Elevator Pitch**: What if I could tell you that there is a language that looks like Python but achieves the performance of C? And that also has the power of metaprogramming of Lisp? Nim is a statically typed compiled language that does all the above and more. And it is easy to learn for Pythonistas.

**Description**:

Experienced Pythonistas are used to reach out to an alternative language when in need for higher performance. In the past this meant to reach out for C, C++ or Cython, more recently the trend is towards Rust. Nim is a relatively unexplored option as a language to learn as a second (or third or …) language on top of Python, but it does provide some interesting benefits.
As Rust, Nim is a statically typed and compiled programming language that can be use to boost Python’s performance. But Nim has different tradeoffs, in particular less emphasis on memory safety and a much easier learning curve, thanks to a indentation based syntax very much familiar to Python developers. 

In this talk we will give a brief presentation of Nim language particularly tailored to Pythonistas. We will cover the language from the ground up, making frequent remarks to the differences with Python. We will briefly cover metaprogramming, one of the most powerful parts of Nim. We will try to cover the philosophy of the language (the Zen of Nim) and we will also cover the part of the ecosystem that are relevant for interoperability with Python (nimpy, nimporter, …).
We will also cover one of the most interesting aspects of Nim that represents a rather distinctive selling point: Nim can compile to Javascript and allows us to be able to work with frontend technologies directly.

At the end we will briefly cover Nimib, my open source project recently ported also to Python. This will showcase a way to use metaprogramming in a real project and how to create a Python package using Nim.

The goal of this talk is to make you curious to go and try out Nim (come for the performance, stay for the ergonomics!), but even if you just come out with a better appreciation and understanding of Python we would still be happy.

## EuroPython

submitted with some changes to proposal:

### abstract 

Learning a new programming language is a particularly rewarding way to improve your programming skills. In this talk we will make the case on why Nim is an interesting language to learn for Pythonistas and in doing so we might learn also something more about Python.

Nim is interesting because:
- it is easy to learn for Pythonistas, since it has a Pythonic syntax
- it is performant and compiles fast to produce native binaries
- it has a powerful type system with strong type inference
- it has a very powerful metaprogramming that, combined with the syntax, allows you to write powerful DSLs (Domain Specific Languages)
- it compiles (also) to Javascript, so you can do frontend stuff with Nim
- it interoperates very well with Python and the other compiling targets (C, C++, ObjectiveC, JS).

We will cover all the aspects above and try to cover also Nim philosophy and making frequent comparison with Python.

At the end we will briefly cover p5nim, a library that wraps one of the most popular libraries for creative coding, p5js.

### outline

- why learning a new programming language (2')
- why Nim coming from Python (2')
- a first program with Nim and differences with Python (3')
- calling Nim from Python and use Nim for performance bottlenecks (3')
- Nim type system (2')
- metaprogramming in Nim (3')
- Compiling Nim to javascript (and related FFI) (3')
- Zen of Nim (2')
- notable Nim libraries and projects (3')
- p5nim and creative coding (5')
- concluding remarks (2')

### bio

Pietro Peterlongo has worked for a number of years as Data Scientist/Software Engineer in a company developing a B2B product for Supply Chain Planning and Optimization where he was in charge of Machine Learning functionalities. He quit and went to Recurse Center for a while (a delightful place to improve your programming skills). At the time of submission he is wondering what he will do next, but the idea of spending his birthday in Prague at a Python conference seems like a very appealing one.

## Lightning at PyCon Sweden 2023

Lightning talk 5' at PyCon Sweden 2023, November 10th.

https://pietroppeter.github.io/nim-for-pythonistas/lightning.html
