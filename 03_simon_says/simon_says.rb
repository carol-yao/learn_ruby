def echo(input)
  input
end

def shout(input)
  input.upcase
end

def repeat(input, times = 2) # note that times = 2 default if user doesn't input the amount of times to repeat
  [input] * times * " " # note that something * times produces an array, but then * " " converts it into a string
end

def start_of_word(input, letters)
  input[0...letters] # note that if string = "hello", then string[0..1] will give str (so exclude last letter by 0...1)
end
