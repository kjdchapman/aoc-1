require './lib/frequency_calculator'

calculator = FrequencyCalculator.new
input = File.read("./input.txt")
puts calculator.execute(input)
