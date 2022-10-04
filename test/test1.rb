require_relative "../1"

require "test/unit"

class TestSimpleNumber < Test::Unit::TestCase

  def test_fist
    assert_equal(0.4482400271, Integral.new.prm(0.0, 0.6,"f1", 100000))
    assert_equal(1.0017080139,Integral.new.prm(0.02, 1.6,"f2", 100000))
    assert_equal(0.4482400271,  Integral.new.trp(0.0, 0.6,"f1", 100000) )
    assert_equal(1.001708014, Integral.new.trp(0.02, 1.6,"f2", 100000))
  end

end
