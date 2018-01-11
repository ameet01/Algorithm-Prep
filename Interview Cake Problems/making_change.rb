class MakingChange

  def initialize
    @memo = {}
  end

  #TOP DOWN
  def making_change(amount_left, denominations, current_index = 0)
    memo_key = [amount_left, current_index].to_s

    if @memo[memo_key]
      return @memo[memo_key]
    end

    return 1 if amount_left == 0
    return 0 if amount_left < 0
    return 0 if current_index == denominations.length

    current_coin = denominations[current_index]

    result = 0

    while amount_left >= 0
      p current_index
      result += making_change(amount_left, denominations, current_index + 1)
      amount_left -= current_coin
    end

    @memo[memo_key] = result

    return result
  end
end

p MakingChange.new.making_change(4, [1,2,3])