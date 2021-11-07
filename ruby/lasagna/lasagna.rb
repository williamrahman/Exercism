class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40
  def remaining_minutes_in_oven(actual_minutes_in_oven)
    EXPECTED_MINUTES_IN_OVEN.to_i - actual_minutes_in_oven
  end

  def preparation_time_in_minutes(layers)
    layers.to_i * 2
  end

  def total_time_in_minutes(number_of_layers: nil , actual_minutes_in_oven: nil)
    layer = preparation_time_in_minutes(number_of_layers)
    return layer + actual_minutes_in_oven
  end
end
