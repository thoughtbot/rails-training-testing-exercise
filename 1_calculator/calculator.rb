class Calculator
  def self.add(a, b)
    a + b
  end

  def self.subtract(a, b)
    a - b
  end

  def self.multiply(a, b)
    a * b
  end

  def self.divide(a, b)
    raise ArgumentError, "Cannot divide by zero" if b == 0
    a / b
  end

  def self.factorial(n)
    raise ArgumentError, "Negative number not allowed" if n < 0
    return 1 if n == 0
    (1..n).inject(:*)
  end
end
