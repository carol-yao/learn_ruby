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

# Note that these both methods work for sum

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
