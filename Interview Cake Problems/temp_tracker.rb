

class TempTracker
  def initialize
    @occurrences = Hash.new(0)
    @max_occurrences = 0

    @total = 0
    @sum = 0.0

    @min = Float::INFINITY
    @max = 0
    @mean = 0
    @mode = 0
  end

  def insert(temp)
    if temp > @max
      @max = temp
    end

    if temp < @min
      @min = temp
    end

    @occurrences[temp] += 1

    if @occurrences[temp] > @max_occurrences
      @max_occurrences = @occurrences[temp]
      @mode = temp
    end

    @total += 1
    @sum += temp
  end

  def get_max
    return @max
  end

  def get_min
    return @min
  end

  def get_mean
    return @sum / @total
  end

  def get_mode
    return @mode
  end
end


tracker = TempTracker.new
tracker.insert(90)
tracker.insert(90)
tracker.insert(45)
tracker.insert(30)
tracker.insert(30)
tracker.insert(30)


p tracker.get_max
p tracker.get_mode
p tracker.get_mean
p tracker.get_min