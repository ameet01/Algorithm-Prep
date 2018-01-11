

def cake_thief(cake_types, capacity)
  max_values_at_capacities = [0] * (capacity + 1)

  (0..capacity).each do |current_capacity|
    current_max = 0

    cake_types.each do |weight, value|
      if weight <= current_capacity
        max_using_cake = value + max_values_at_capacities[current_capacity - weight]
        current_max = [current_max, max_using_cake].max
      end
    end

    max_values_at_capacities[current_capacity] = current_max
  end
  
  max_values_at_capacities[capacity]
end

p cake_thief([[7, 160], [3, 90], [2, 15]], 20)