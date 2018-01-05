#Enumerate all primes to N


#brute

def primes(n)
  (2...n).select { |i| is_prime?(i) }
end

def is_prime?(n)
  (2...n/2).none? {|i| n % i == 0}
end

p primes(22)