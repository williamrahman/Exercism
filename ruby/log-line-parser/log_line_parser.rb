class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(':').last.strip
  end

  def log_level
    open_bracket, close_bracket = @line.index('['), @line.index(']')

    @line[(open_bracket+1)..(close_bracket-1)].downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
