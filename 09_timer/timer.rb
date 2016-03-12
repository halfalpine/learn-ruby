class Timer 
  attr_accessor :seconds 
  def initialize
    @seconds = 0
  end
  def time_string
    s = @seconds % 60
    m = (@seconds % 3600) / 60
    h = @seconds / 3600
    s = two_digits(s)
    m = two_digits(m)
    h = two_digits(h)
    h + ":" + m + ":" + s 
  end

  def two_digits(interval)
    if interval.to_s.length == 1
      interval = "0" + "#{interval}"
    else
      "#{interval}"
    end
  end
end 

