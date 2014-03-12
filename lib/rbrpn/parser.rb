class RPNParser

  def initialize calc
    @calc = calc
  end

  def parse line
    result = nil
    line.split.each do |token|
      if token =~ /^[0-9]+[.]?[0-9]*$/
        @calc.push token.to_f
      elsif token =~ /[-+*\/]/
        case token
        when "+"
          result = @calc.add
        when "-"
          result = @calc.subtract
        when "*"
          result = @calc.multiply
        when "/"
          result = @calc.divide
        end
      end
    end
    result
  end
end