class Simulator
  CONST = {
    'L' => :turn_left,
    'R' => :turn_right,
    'A' => :advance,
  }

  def evaluate(robot, command_string)
    instructions(command_string).each { |c| robot.send(c) }
  end

  def instructions(command_string)
    command_string.chars.map { |c| CONST[c] }
  end

  def place(robot, x:, y:, direction:)
    robot.at(x, y)
    robot.orient(direction)
  end
end

class Robot
  def initialize
    @bearing = [:north, :east, :south, :west]
  end

  def orient(direction)
    raise ArgumentError unless @bearing.include?(direction)
    @bearing.rotate! until @bearing[0] == direction
  end

  def bearing
    @bearing[0]
  end

  def turn_right
    @bearing.rotate!
  end

  def turn_left
    @bearing.rotate!(-1)
  end

  def at(x, y)
    @x, @y = x, y
  end

  def coordinates
    [@x, @y]
  end

  def advance
    case bearing
      when :north 
        @y += 1
      when :east 
        @x += 1
      when :south 
        @y -= 1
      when :west 
        @x -= 1
    end
  end
end