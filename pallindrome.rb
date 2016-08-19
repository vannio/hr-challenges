# Figure out whether or not any anagram of a string can be a palindrome

def is_palindrome?(str)
  hash = {}
  str.chars.each { |char| hash[char] ? hash[char] += 1 : hash[char] = 1 }
  hash.delete_if { |key, val| val.even? }
  hash.map { |key, val| hash[key] = hash[key] % 2 }
  hash.values.reduce(:+).to_i <= 1
end

# is_palindrome?('cdefghmnipqrstuvw') => false
