require_relative "../2"

require "test/unit"

class TestSimpleNumber < Test::Unit::TestCase

  def test_first
    number = Number.new
    assert_equal(4.3239635,number.sum(0.8,0.0,0.001) )
    assert_equal(1.9260381,number.sum(0.5,100,0.001) )
  end

end

