require './lib/find_repeat_frequency'

calculator = FindRepeatFrequency.new
input = File.read("./input.txt")
puts calculator.execute(input)
