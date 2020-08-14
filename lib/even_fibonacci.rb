# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  fib_nums = []
  sum = 0
  prevN = 0
  nextN = 1
  while sum < limit
    sum = prevN + nextN
    break if sum > limit
    fib_nums << sum if sum.even?
    prevN = nextN
    nextN = sum
  end
  fib_nums.reduce(0, :+)
end
