class RPNCalc

  def initialize
    @stack = []
  end

  def push value
    @stack.push(value)
    value
  end

  def add
    a = @stack.pop || 0
    b = @stack.pop || 0
    push a + b
  end

  def subtract
    a = @stack.pop || 0
    b = @stack.pop || 0
    push a - b
  end

  def multiply
    a = @stack.pop || 0
    b = @stack.pop || 1
    push a * b
  end

  def divide
    a = @stack.pop || 0
    b = @stack.pop || 1
    push a / b
  end
end