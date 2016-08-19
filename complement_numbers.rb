# Write a function that returns a complement of n as a base-10 integer

def complement_num(num)
  num.to_s(2).gsub(/[10]/, '1' => 0, '0' => 1).to_i(2)
end

def passes_test?
  return false unless complement_num(50) == 13
  true
end

# passes_test? => true
