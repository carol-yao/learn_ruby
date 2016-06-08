def translate(string)
  alphabet = ("a".."z").to_a
  vowels = ['a','i','e','o','u']
  consonants = (alphabet - vowels) << "qu"
  words = string.split(" ")
  sentence = []

  words.each do |word|
    beginning = word
    ending = []
    while word.start_with? *consonants
      if word.start_with?('qu')
      ending << "qu"
      beginning.slice!(0, 2)
      break
    end
      ending << beginning.split("").shift
      beginning.slice!(0)
    end
    sentence << beginning + ending.join + "ay"
  end
  sentence.join(" ")
end
