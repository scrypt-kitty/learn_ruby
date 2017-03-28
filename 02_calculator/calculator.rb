#write your code here
def add(a, b)
  return a + b
end

def subtract(a, b)
  return a - b
end

def sum(arr)
  total = 0
  for x in arr
    total += x
  end
  return total
end

def multiply(*args)
  product = 1
  for x in args
    product *= x
  end
  return product
end

def power(a, b)
  return a**b
end

def factorial(a)
  total = a
  if a == 0 || a == 1
    return total
  else
    total = a * factorial(a - 1) # recursion
  end
  return total
end

factorial(5)
