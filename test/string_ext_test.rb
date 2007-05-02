require 'test/unit'
require 'init'

class StringExtTest < Test::Unit::TestCase

  def test_rand_length
    (1..10).each do |l|
      r = String.rand(l)
      assert_equal r.length, l
    end
  end

  def test_rand_difference
    r1 = String.rand(12)
    r2 = String.rand(12)
    assert_not_equal r1, r2
  end
end
