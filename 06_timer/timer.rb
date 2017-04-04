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

  def time_string_old
    # self.seconds = (self.seconds / 60) / 60

    length = self.seconds.to_s.size

    if length < 6
      leading_zeros = (6 - length)
    end

    time = "0%01#{leading_zeros}d" % self.seconds

    hours = "#{time[-6]}" + "#{time[-5]}"
    minutes = "#{time[-4]}" + "#{time[-3]}"
    seconds = "#{time[-2]}" + "#{time[-1]}"    

    if (seconds.to_i / 60) > 0
      minutes = "0%01d" % (minutes.to_i + (seconds.to_i / 60)).to_s
      seconds = "0%01d" % (seconds.to_i - (minutes.to_i * 60)).to_s
    end

    if (minutes.to_i / 60) > 0
      hours = "0%01d" % (hours.to_i + (minutes.to_i / 60)).to_s
      minutes = "0%01d" % (minutes.to_i - (seconds.to_i * 60)).to_s
    end

    format = "#{hours}:#{minutes}:#{seconds}"
    return format
  end

  def time_string
    length = self.seconds.to_s.size

    if length < 6
      leading_zeros = (6 - length)
    end

    seconds = self.seconds
    minutes = seconds / 60
    hours = minutes / 60
    seconds = seconds - (minutes * 60)

    if seconds.to_i < 10
      seconds = "0%01d" % seconds.to_s
    end

    puts "MINUTES: " + minutes.to_s

    if minutes.to_i < 10
      minutes = "0%01d" % (minutes - (hours * 60)).to_s
    else
      minutes = minutes - (hours * 60)
    end

    if hours.to_i < 10
      hours = "0%01d" % hours
    else
      hours = hours
    end

    # catch broken minutes
    if minutes.to_s.size == 1
       minutes = "0%01d" % minutes
    end

    time = "#{hours}:#{minutes}:#{seconds}"

    return time
  end
end

timer = Timer.new
timer.seconds = 8000
puts timer.time_string

timer = Timer.new
timer.seconds = 36000
puts timer.time_string
