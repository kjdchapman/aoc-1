class FindRepeatFrequency
  def execute(input)
    current = 0
    frequencies = [current]
    adjustments = input.split.map(&:to_i)

    while(true) do
      adjustments.each do |adjustment|
        current = current + adjustment
        return current if frequencies.include?(current)
        frequencies << current
      end
    end
  end
end
