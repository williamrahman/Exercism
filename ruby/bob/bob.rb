class Bob
  def self.hey(message)
    if said_nothing?(message)
      'Fine. Be that way!'
    elsif yelling?(message) && non_char?(message)
      if question?(message) 
        "Calm down, I know what I'm doing!"
      else
        'Whoa, chill out!'
      end
    elsif question?(message)
      'Sure.'
    else
      'Whatever.'
    end
  end
  
  def self.yelling?(message)
    message.upcase == message
  end

  def self.non_char?(message)
    message.match(/[A-Za-z]/) != nil
  end
  
  def self.question?(message)
    message.to_s.strip.end_with? '?'
  end

  def self.said_nothing?(message)
    message.to_s.strip.empty?
  end
end