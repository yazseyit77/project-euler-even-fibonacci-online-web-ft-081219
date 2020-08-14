# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  fib_nums = []
  sum = 0
  prevN = 0
  nextN = 0
  while sum < limit
    sum = prevN + nextN
    break if sum > limit
    