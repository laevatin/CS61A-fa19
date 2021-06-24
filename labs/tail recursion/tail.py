def tail_rec(fun):
   def tail(fun):
      a = fun
      while callable(a):
         a = a()
      return a
   return (lambda x: tail(fun(x)))

def tail_even(x):
  if x == 0:
    return True
  else:
    return (lambda: tail_odd(x - 1))

def tail_odd(x):
  if x == 0:
    return False
  else:
    return (lambda: tail_even(x - 1))

even = tail_rec(tail_even)
odd = tail_rec(tail_odd)