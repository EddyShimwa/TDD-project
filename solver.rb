class Solver
  def factorial(number)
    raise ArgumentError, 'Input should not be a negative number!' unless number.is_a?(Integer) && number >= 0

    return 1 if number.zero?

    result = 1
    (1..number).each do |i|
      result *= i
    end

    result
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(number)
    if (number % 15).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number.to_s
    end
  end
end
