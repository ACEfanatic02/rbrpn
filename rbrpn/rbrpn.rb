class RPNCalc

  def initialize
    @stack = []
  end

  def push(value)
    @stack.push(value)
  end

  def add
    pop_stack + pop_stack
  end

  def subtract
    pop_stack - pop_stack
  end

  private

    def pop_stack
      @stack.pop || 0
    end

end