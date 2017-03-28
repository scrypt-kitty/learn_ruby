#write your code here
def echo(a)
  return a
end

def shout(a)
  return a.upcase
end

def repeat(a, count=2) # optional param, default to 2
  val = a + " "
  val *= count
  val = val[0, val.length-1]
  return val
end

def start_of_word(a, b)
  return a[0...b]
end

def first_word(a)
  val = a.split(" ")
  return val[0]
end

def titleize(a)
  splitter = a.split(" ")

  if splitter[0] == "the"
    splitter[0] = "The"
  end

  if splitter[0] == "over"
    splitter[0] = "Over"
  end

  for each in splitter
    if each == "and" || each == "the" || each == "over"
    else
      each.capitalize!
    end
  end

  a = splitter.join(" ")
  return a
end
