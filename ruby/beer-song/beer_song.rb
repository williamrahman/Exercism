class BeerSong
  def self.verse(num)
    return zero_verse if num == 0
    return first_verse if num == 1
    return second_verse if num == 2

    typical_verse(num)
  end

  def self.recite(from, to)
    from.downto(to).map { |num| verse(num) + "\n" }.join
  end
  
  def self.typical_verse(num)
    "#{num} bottles of beer on the wall, #{num} bottles of beer.\nTake one down and pass it around, #{num - 1} bottles of beer on the wall.\n"
  end
  
  def self.zero_verse
    "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def self.first_verse
    "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
  end

  def self.second_verse
    "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n"
  end
end
