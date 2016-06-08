class Temperature

  def initialize(hash)
    @hash = hash
  end

  def to_fahrenheit
    celsius = 0
    @hash.each do |key, value|
      if key == :f # note that hash keys have to be :f format
        celsius = value
      else
        celsius = (value * 9.0/5.0) + 32
      end
    end
    celsius
  end

  def to_celsius
    fahrenheit = 0
    @hash.each do |key, value|
      if key == :c
        fahrenheit = value
      else
        fahrenheit = (value - 32) * 5.0/9.0
      end
    end
    fahrenheit
  end

  def self.in_celsius(temperature)
    self.new(c: temperature) # but hashes can be in the format c: temp
  end

  def self.in_fahrenheit(temperature)
    self.new(f: temperature)
  end
end

class Celsius < Temperature

  def initialize(temperature)
    super(c: temperature)
  end

end
