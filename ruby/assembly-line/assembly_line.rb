class AssemblyLine
  NUMBER_OF_CARS = 221
  SUCCESS_RATE = [0.77, 0.8, 0.9, 1]
  MINUTE_PER_HOUR = 60
  
  def initialize(speed)
    @speed = speed
  end

  def success_rate
    case @speed 
      when 10
        return SUCCESS_RATE[0]
      when 9
        return SUCCESS_RATE[1]
      when 5..8
        return SUCCESS_RATE[2]
      else 
        return SUCCESS_RATE[3]
    end
  end

  def production_rate_per_hour
    (NUMBER_OF_CARS * @speed) * success_rate
  end
  
  def working_items_per_minute
    (production_rate_per_hour/MINUTE_PER_HOUR).to_i
  end
end