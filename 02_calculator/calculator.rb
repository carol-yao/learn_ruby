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
