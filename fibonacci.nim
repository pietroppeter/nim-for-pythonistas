import nimpy

func fib*(n: int): int {. exportpy .} =
  if n < 2: 1 else: fib(n - 1) + fib(n - 2)
