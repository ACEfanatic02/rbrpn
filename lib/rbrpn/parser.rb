class RPNParser

  def initialize calc
    @calc = calc
  end

  def parse line
    line.split.each do |token|
      @calc.push token.to_f
    end
  end
end