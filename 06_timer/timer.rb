require 'date'

class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def seconds=(new_seconds)
    @seconds = new_seconds
  end

  def time_string
    
    length = self.seconds.to_s.size

    if length < 6
      # need + 1 to make length and leading_zeros to work?
      leading_zeros = (6 - length) + 1 
    end

    time = "0%0#{leading_zeros}d" % self.seconds

    first_set = "#{time[-6]}" + "#{time[-5]}"
    second_set = "#{time[-4]}" + "#{time[-3]}"
    third_set = "#{time[-2]}" + "#{time[-1]}"    

    if (third_set.to_i / 60) > 0
      second_set = "0%01d" % (second_set.to_i + (third_set.to_i / 60)).to_s
      third_set = "0%01d" % (third_set.to_i - (second_set.to_i * 60)).to_s
    end

    format = "#{first_set}:#{second_set}:#{third_set}"
    return format
  end

end

timer = Timer.new
timer.seconds = 60
puts timer.time_string
