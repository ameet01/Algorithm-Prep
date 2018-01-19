require_relative '5.12'

def random_permutation(n)
  array = (0..n).to_a
  array = random_sampling(n, array)
  array
end


p random_permutation(10)