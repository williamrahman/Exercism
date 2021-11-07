module SavingsAccount
  INTEREST_RATE = [0.5, 1.621, 2.475, -3.213]
  
  def self.interest_rate(balance)
    case balance
      when 0.0...1000.0 
        INTEREST_RATE[0]
      when 1000.0...5000.0 
        INTEREST_RATE[1]
      when 5000.0...Float::INFINITY 
        INTEREST_RATE[2]
      else 
        INTEREST_RATE[3]
    end
  end

  def self.annual_balance_update(balance)
    balance + (interest_rate(balance) / 100.0) * balance.abs
  end

  def self.years_before_desired_balance(current, goal)
    return Float::INFINITY if current <= 0 and current < goal
    
    count = 0
    until current >= goal
      current = annual_balance_update(current)
      count += 1
    end
    
    return count
  end
end