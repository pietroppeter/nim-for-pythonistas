when defined(static3):
  const N = 3
  type
    Matrix = array[N, array[N, int]]
    Vector = array[N, int]

  func `*`(a, b: Matrix): Matrix =
    for i in 0 ..< N:
      for j in 0 ..< N:
        for k in 0 ..< N:
          result[i][j] += a[i][k]*b[k][j]

  func `*`(a: Matrix, v: Vector): Vector =
    for i in 0 ..< N:
      for j in 0 ..< N:
        result[i] += a[i][j]*v[j]

  func `+`(v: Vector, n: int): Vector =
    for i in 0 ..< N:
      result[i] = v[i] + n

else:
  type
    Matrix*[T] = object
      data*: seq[T]
      nrows*: int
      ncols*: int
    Vector*[T] = seq[T]

  func initMatrix*[T](nrows, ncols: int): Matrix[T] =
    result.data = newSeq[T](nrows*ncols)
    result.nrows = nrows
    result.ncols = ncols

  func initVector*[T](size: int): Vector[T] =
    result = newSeq[T](size)

  func `[]`*[T](m: Matrix[T], i, j: int): T =
    doAssert i >= 0 and i < m.nrows
    doAssert j >= 0 and j < m.ncols
    m.data[i*m.ncols + j]

  proc `[]=`*[T](m: var Matrix[T], i, j: int, val: T) =
    doAssert i >= 0 and i < m.nrows
    doAssert j >= 0 and j < m.ncols
    m.data[i*m.ncols + j] = val

  func `*`*[T](a, b: Matrix[T]): Matrix[T] =
    doAssert a.ncols == b.nrows
    result = initMatrix[T](a.nrows, b.ncols)
    for i in 0 ..< a.nrows:
      for j in 0 ..< a.ncols:
        for k in 0 ..< b.ncols:
          result[i, j] = result[i, j] + a[i, k]*b[k, j]

  func `*`*[T](a: Matrix[T], v: Vector[T]): Vector[T] =
    doAssert a.ncols == v.len
    result = initVector[T](a.nrows)
    for i in 0 ..< a.nrows:
      for j in 0 ..< a.ncols:
        result[i] += a[i, j]*v[j]

  func `+`*[T](v: Vector[T], n: int): Vector[T] =
    result = initVector[T](v.len)
    for i in 0 ..< v.len:
      result[i] = v[i] + n

  func `$`*[T](m: Matrix[T]): string =
    for i in 0 ..< m.nrows:
      result += "["
      for j in 0 ..< m.ncols:
        result += " " & $m[i, j]
      result += " ]\n"

when isMainModule:
  import print
  import std / math

  when defined(static3):
    let
      A = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
      B = [[1, 1, 1], [0, 1, 1], [0, 0, 1]]
      v = [-1, -1, 1]

    print A
    print B
    print v
    print A*B
    print (A*B)*v
    print ((A*B)*v + 1)
    print sum ((A*B)*v + 1)
  else:
    let N = 2
    var
      A = initMatrix[int](N, N)
      B = initMatrix[int](N, N)
      v = initVector[int](N)
    for n in 1 .. N*N:
      A.data[n - 1] = n
    for i in 0 ..< N:
      for j in 0 ..< N:
        B[i, j] = if i <= j: 1 else: 0
    v[^1] = 1

    print A
    print B
    print v
    print A*B
    print (A*B)*v
    print sum (A*B)*v


# https://packaging.python.org/en/latest/tutorials/packaging-projects/