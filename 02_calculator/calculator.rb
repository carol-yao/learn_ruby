def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(array)
  if array == []
    0
  else
  array.inject do |sum, i|
    sum + i
  end
  end
end

# Both methods work for sum

# def sum(array)
#   if array == []
#     0
#   else
#   array.reduce(:+)
# end
# end

def multiply(x, y)
  x * y
end

def product(array)
  array.reduce(1, :*)
end

def factorial(x)
  (1..x).reduce(1, :*)
end

# This factorial method uses product

# def factorial(x)
#   product(1..x)
# end
