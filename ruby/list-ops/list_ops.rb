class ListOps

  def self.arrays(arr)
    arr.count
  end

  def self.reverser(arr)
    arr.reverse
  end

  def self.concatter(a, b)
    a + b
  end

  def self.mapper(arr)
    answer = []
    arr.each do |element|
      answer << yield(element) if block_given?
    end
    answer
  end

  def self.filterer(arr)
    answer = []
    arr.each do |element|
      answer << element if block_given? && yield(element)
    end
    answer
  end

  def self.sum_reducer(arr)
    arr.sum
  end
  
  def self.factorial_reducer(arr)
    answer = 1
    arr.each {|num| answer = answer * num }
    answer
  end
end