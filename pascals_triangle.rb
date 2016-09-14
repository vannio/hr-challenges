def find_pascals_row(row)
  last_row = [1]
  current_row = []

  row.times do |j|
    current_row << 1
    (last_row.length - 1).times do |i|
      current_row << last_row[i] + last_row[i+1]
    end
    current_row << 1

    last_row = current_row
    current_row = []
  end

  last_row
end

p find_pascals_row(2) == [1,2,1]
p find_pascals_row(2) != [1,1,1]
p find_pascals_row(4) == [1,4,6,4,1]
