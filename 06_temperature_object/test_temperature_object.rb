require './test_helper'
require 'temperature'

# Remember one degree fahrenheit is 5/9 of one degree celsius,
# and the freezing point of water is 0 degrees celsius but 32 degrees fahrenheit.

class TestTemperature < MiniTest::Test
  # constructing with options hash with F
  # to_fahrenheit

  def test_initialize_fahrenheit
    assert_equal 50, Temperature.new({:f => 50}).to_fahrenheit

  end

  # conversions
  def test_convert_celsius_at_freezing
    assert_equal 0, Temperature.new({:f => 32}).to_celsius
  end

  def test_convert_celsius_at_boiling
    assert_equal 100, Temperature.new({:f => 212}).to_celsius
  end

  def test_convert_celsius_at_body_temperature
    assert_equal 37, Temperature.new({:f => 98.6}).to_celsius
  end

  def test_convert_celsius_at_any_temperature
    assert_equal 20, Temperature.new({:f => 68}).to_celsius
  end

  # constructing with options hash with F
  # to_fahrenheit
  def test_initialize_celsius
    assert_equal 50, Temperature.new({:c => 50}).to_celsius
  end

  def test_convert_fahrenheit_at_freezing
    assert_equal 32, Temperature.new({:c => 0}).to_fahrenheit
  end

  def test_convert_fahrenheit_at_boiling
    assert_equal 212, Temperature.new({:c => 100}).to_fahrenheit
  end

  # constructing factory methods

  def test_in_celsius
    assert_equal 50, Temperature.in_celsius(50).to_celsius
    assert_equal 122, Temperature.in_celsius(50).to_fahrenheit
  end

  def test_in_fahrenheit
    assert_equal 50, Temperature.in_fahrenheit(50).to_fahrenheit
    assert_equal 10, Temperature.in_fahrenheit(50).to_celsius
  end

  #  Temperature subclasses
  def test_celsius_subclass_initialize
    assert_equal 50, Celsius.new(50).to_celsius
    assert_equal 122, Celsius.new(50).to_fahrenheit
  end

  def test_celsius_is_temperature_subclass
    assert_equal Temperature, Celsius.superclass
  end
  #
  def test_fahrenheit_subclass_initialize
    assert_equal 50, Fahrenheit.new(50).to_fahrenheit
    assert_equal 10, Fahrenheit.new(50).to_celsius
  end

  def test_fahrenheit_is_temperature_subclass
    assert_equal Temperature, Fahrenheit.superclass
  end


  # Extra credit:
  #
  # 1. Fill in the tests below, so that they test for two class methods – ftoc and ctof
  # 2. Refactor the rest of your code so it calls these two methods when appropriate

  # utility class methods

  # def test_.....
end
