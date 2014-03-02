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
    a = @stack.pop || 0
    b = @stack.pop || 1

    a * b
  end

  def divide
    a = @stack.pop || 0
    b = @stack.pop || 1
    a / b
  end
end