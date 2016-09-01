input = ARGF.read
nums = input.split("\n")
total = 0
nums.each do |num|
  total += num.to_f
end
puts total