def convert_to_binary(num)
  highest_power = 1

  while 2 ** (highest_power + 1) < num do
    highest_power += 1
  end

  string = ''

  highest_power.downto(0).each do |i|
    if num - (2 ** i) >= 0
      num = num - (2 ** i)
      string << '1'
    else
      string << '0'
    end
  end

  string
end

p convert_to_binary(5) == '101'
p convert_to_binary(10) == '1010'
p convert_to_binary(10) != '1111'
p convert_to_binary(13) == '1101'
