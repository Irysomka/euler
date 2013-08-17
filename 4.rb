# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(n)
  # digits = Math.log10(n)
  n.to_s == n.to_s.reverse
end

palindroms = []
(100..999).each do |n|
  (n..999).each do |k|
    palindroms << n*k if palindrome?(n*k)
  end
end
puts palindroms.max
