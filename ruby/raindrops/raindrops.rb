class Raindrops
    CONST = {
      3 => "Pling", 
      5 => "Plang", 
      7 => "Plong" 
    }
    
    def self.convert(number) 
      conversion  = ""

      CONST.each { |prime, sound| conversion += sound if number % prime == 0  }
      
      conversion.empty? ? number.to_s : conversion
    end
  end