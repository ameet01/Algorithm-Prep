require 'set'

def inflight_entertainment(flight_length, movie_lengths)
  hash = Hash.new

  movie_lengths.each_with_index do |movie_length, index|
    hash[movie_length] = index
  end

  movie_lengths.each_with_index do |movie_length, index|
    diff = flight_length - movie_length
    return true if hash[diff] && hash[diff] != index
  end

  false
end

def inflight_entertainment2(flight_length, movie_lengths)
  set = Set.new

  movie_lengths.each do |movie_length|
    diff = flight_length - movie_length
    return true if set.include?(diff)

    set.add(movie_length)
  end

  false
end


p inflight_entertainment2(90, [45,32,54,75,23,23,54,32,43])