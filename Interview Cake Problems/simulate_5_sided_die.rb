

def rand5
  result = Float::INFINITY

  until result <= 5
    result = rand(7)
  end

  return result
end

p rand5