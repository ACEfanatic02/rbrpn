class RPNCalc

  def initialize
    @stack = []
  end

  def push value
    @stack.push(value)
  end

  def add
    a = @stack.pop || 0
    b = @stack.pop || 0
    a + b
  end

  def subtract
    a = @stack.pop || 0
    b = @stack.pop || 0
    a - b
  end

  def multiply
    a = @stack.pop
    b = @stack.pop

    # Empty stack, must return 0
    a = b = 0 if a.nil? && b.nil?
    # Otherwise, we need to return identity of the only value
    a = 1 if a.nil?
    b = 1 if b.nil?

    a * b
  end

  def divide
    a = @stack.pop || 0
    b = @stack.pop || 1
    a / b
  end
end