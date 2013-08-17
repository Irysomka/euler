# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require "prime"

# def check_prime(curr)
#   (2..Math.sqrt(curr).ceil).each do |n|
#     return false if curr % n == 0
#   end
#   true
# end

x = 600851475143
p = 2
Prime.each do |p|
  next unless x % p == 0

  x = x / p
  if x == 1
    puts p
    break
  end
end
