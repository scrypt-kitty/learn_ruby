#write your code here
def ftoc(f)
  # (°F) minus 32, times 5/9
  c = (f - 32) * 5/9
  return c
end

def ctof(c)
  # (°C) times 9/5 plus 32
  f = (c * 9.0/5.0) + 32.0
  return f
end

puts ctof(37)
