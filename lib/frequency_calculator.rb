class FrequencyCalculator
  def execute(adjustments)
    adjustments.split.sum{|char| char.to_i}
  end
end
