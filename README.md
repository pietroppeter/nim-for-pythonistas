# nim-for-pythonistas

me introducing [Nim](https://nim-lang.org/) to pythonistas. a talk on the Nim programming language, being a Pythonista and improving your programming skills learning a (niche) language.

A lot of thoughts and work for this presentation prepared during a batch at [Recurse Center](https://www.recurse.com/) 🐙

## PyCon Italy 2024

Click thumbnail to see the video:
[![pycon 2024 nim for pythonista video thumbnail](pyconit.png)](https://www.youtube.com/watch?v=yPMudqyKtLQ)

https://2024.pycon.it/it/event/nim-for-pythonistas

**Elevator Pitch**: What if I could tell you that there is a language that looks like Python but achieves the performance of C? And that also has the power of metaprogramming of Lisp? Nim is a statically typed compiled language that does all the above and more. And it is easy to learn for Pythonistas.

**Description**:

Experienced Pythonistas are used to reach out to an alternative language when in need for higher performance. In the past this meant to reach out for C, C++ or Cython, more recently the trend is towards Rust. Nim is a relatively unexplored option as a language to learn as a second (or third or …) language on top of Python, but it does provide some interesting benefits.
As Rust, Nim is a statically typed and compiled programming language that can be use to boost Python’s performance. But Nim has different tradeoffs, in particular less emphasis on memory safety and a much easier learning curve, thanks to a indentation based syntax very much familiar to Python developers. 

In this talk we will give a brief presentation of Nim language particularly tailored to Pythonistas. We will cover the language from the ground up, making frequent remarks to the differences with Python. We will briefly cover metaprogramming, one of the most powerful parts of Nim. We will try to cover the philosophy of the language (the Zen of Nim) and we will also cover the part of the ecosystem that are relevant for interoperability with Python (nimpy, nimporter, …).
We will also cover one of the most interesting aspects of Nim that represents a rather distinctive selling point: Nim can compile to Javascript and allows us to be able to work with frontend technologies directly.

At the end we will briefly cover Nimib, my open source project recently ported also to Python. This will showcase a way to use metaprogramming in a real project and how to create a Python package using Nim.

The goal of this talk is to make you curious to go and try out Nim (come for the performance, stay for the ergonomics!), but even if you just come out with a better appreciation and understanding of Python we would still be happy.

## Lightning at PyCon Sweden 2023

Lightning talk 5' at PyCon Sweden 2023, November 10th. That lightning session was lots of fun, watch it in full here: https://www.youtube.com/watch?v=FLCTCyTjqFc

https://pietroppeter.github.io/nim-for-pythonistas/lightning.html

## code for slides

slides are done with [nimislides] (a [nimib] theme). slide code is structure in modules (using named templated for slide), it is a helpful way to structure nimislides code while working on it.

[nimislides]: https://github.com/HugoGranstrom/nimiSlides
[nimib]: https://github.com/pietroppeter/nimib
