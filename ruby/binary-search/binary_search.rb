class BinarySearch
  attr_reader :numbers

  def initialize(numbers)
    @numbers = numbers
  end
  
  def search_for(number)
    return nil if numbers.empty? || !numbers.include?(number)
    group = numbers.clone
    loop do
      amount = group.size == 1 ? 1 : group.size / 2
      if group.first(amount).last < number
        group -= group.first(amount)
      elsif group.first(amount).last > number
        group = group.first(amount)
      else
        return numbers.index(group.first(amount).last)
        break
      end
    end
  end
end