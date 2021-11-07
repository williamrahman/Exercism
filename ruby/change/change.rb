class Change
  def self.generate(coins, target)
    raise NegativeTargetError if target < 0

    return [] if target == 0

    max_pos = (target.to_f / coins.min).ceil

    (1..max_pos).each do |nb_coins|
      found_combination = coins.repeated_combination(nb_coins).find { |selection| selection.sum == target}
      return found_combination if found_combination
    end

    raise ImpossibleCombinationError
  end

  class ImpossibleCombinationError < StandardError

  end

  class NegativeTargetError < StandardError
    
  end
end