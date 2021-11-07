class SimpleLinkedList
  def initialize(input=nil)
    @elements = []
    normalize_elements(input.to_a) if input
  end

  def normalize_elements(input)
    input.each do |i|
      push(Element.new(i))
    end
  end

  def push(e)
    @elements.unshift(e)
    self
  end

  def pop
    @elements.shift
  end

  def to_a
    @elements.map(&:datum)
  end

  def reverse!
    @elements.reverse!
    self
  end
end

class Element
  attr_accessor :datum, :next
  def initialize(datum = nil)
    @datum = datum
    @next = nil
  end
end