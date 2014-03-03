require 'rbrpn/calc'
require 'rbrpn/parser'

describe RPNParser do

  describe '#parse' do

    it 'pushes operands to stack' do
      calc = RPNCalc.new
      parser = RPNParser.new calc
      parser.parse "5 4"
      calc.add.should eq 9
    end
    it 'returns result of operations' do
      calc = RPNCalc.new
      parser = RPNParser.new calc
      parser.parse("5 4 +").should eq 9
    end
  end
end