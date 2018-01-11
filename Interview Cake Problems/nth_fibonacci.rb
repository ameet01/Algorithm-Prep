

#Inefficient. O(2^n)
def nth_fibonnaci(n)
  return 0 if n == 0
  return 1 if n == 1
  nth_fibonnaci(n-2) + nth_fibonnaci(n-1)
end

#Better. O(n) through memoizing the call stacks so they don't repeat.
class Fibber
  def initialize
    @memo = {}
  end


  def nth_fibonnaci(n)
    return @memo[n] if @memo.include?(n)
    return 0 if n == 0
    return 1 if n == 1

    result = nth_fibonnaci(n-2) + nth_fibonnaci(n-1)
    @memo[n] = result
    return result
  end
end


p Fibber.new.nth_fibonnaci(4)



#Iterative fibs is less space since no call stacks and still O(n)

def iterative_nth_fibonnaci(n)
  return n if n == 1 || n == 0
  prev = 1
  prev_prev = 0
  current = 0

  (n - 1).times do |i|
    current = prev + prev_prev
    prev_prev = prev
    prev = current
  end

  current

  # array = [0, 1]

  # until array.length == 5
  #   array.push(array[-1] + array[-2])
  # end

  # array.last
end

p iterative_nth_fibonnaci(1)