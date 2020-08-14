# Implement your object-oriented solution here!

class EvenFibonacci
  attr_reader :limit, :sum

  def initialize(limit)
    @limit = limit
    @sum = self.sum()
  end

  def sum
    fib_nums = []
    sum = 0
    prevN = 0
    nextN = 1
    while sum < @limit
      sum = prevN + nextN
      break if sum > @limit
      fib_nums << sum if sum.even?
      prevN = nextN
      nextN = sum
    end
    fib_nums.reduce(0, :+)
  end
end
