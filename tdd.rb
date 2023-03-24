require "minitest/autorun"

class SolverTest < Minitest::Test
  def setup
    @solver = Solver.new
  end

  def test_factorial_with_zero
    assert_equal 1, @solver.factorial(0)
  end

  def test_factorial_with_positive_integer
    assert_equal 120, @solver.factorial(5)
  end

  def test_factorial_with_negative_integer
    assert_raises(ArgumentError) { @solver.factorial(-3) }
  end

  def test_reverse
    assert_equal "olleh", @solver.reverse("hello")
  end

  def test_fizzbuzz_with_divisible_by_3
    assert_equal "fizz", @solver.fizzbuzz(9)
  end

  def test_fizzbuzz_with_divisible_by_5
    assert_equal "buzz", @solver.fizzbuzz(20)
  end

  def test_fizzbuzz_with_divisible_by_3_and_5
    assert_equal "fizzbuzz", @solver.fizzbuzz(30)
  end

  def test_fizzbuzz_with_non_divisible_integer
    assert_equal "7", @solver.fizzbuzz(7)
  end
end