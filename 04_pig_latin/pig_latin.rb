def translate(word)
  alphabet = ("a".."z").to_a
  vowels = ['a','i','e','o','u']
  consonants = (alphabet - vowels) << "qu"
  ending = []
  beginning = word

  while word.start_with? *consonants
    ending << beginning.split("").shift
    beginning.slice!(0)
  end
   beginning + ending.join + "ay"
end
