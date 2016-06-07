require './test_helper'
require "hello"

class TestHello < MiniTest::Test

  def test_says_hello
    assert_equal("Hello!", hello)
  end

  def test_says_hello_to_someone
    assert_equal "Hello, Alice!", greet("Alice")
  end

  def test_says_hello_to_someone_else
    assert_equal "Hello, Bob!", greet("Bob")
  end

end
