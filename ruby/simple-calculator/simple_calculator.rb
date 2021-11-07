class SimpleCalculator
  class UnsupportedOperation < StandardError
  end
  
  OPERATIONS = ['+', '/', '*']

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError.new() if !first_operand.is_a?(Numeric) || !second_operand.is_a?(Numeric)
    
    first_num = first_operand.to_i
    second_num = second_operand.to_i
    
    result =  case operation
              when '+'
                first_num + second_num
              when '/'
                begin 
                  first_num / second_num
                rescue
                  return "Division by zero is not allowed."
                end
              when '*'
                first_num * second_num
              else
                raise UnsupportedOperation.new()
              end
  
    return "#{first_operand} #{operation} #{second_operand} = #{result.to_i}"
  end
end