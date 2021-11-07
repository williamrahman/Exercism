class Phrase
  def initialize(phrase)
    @words = phrase.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    @words.group_by{ |x| x }.transform_values{ |x| x.count }
  end
end