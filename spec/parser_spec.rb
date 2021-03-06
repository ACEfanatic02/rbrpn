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
    it 'returns nil for pushing operands' do
      calc = RPNCalc.new
      parser = RPNParser.new calc
      parser.parse("5 4").should be_nil
    end
    it 'correctly handles multiple operators' do
      calc = RPNCalc.new
      parser = RPNParser.new calc
      parser.parse("5 5 4 + +").should eq 14
    end
    it 'ignores invalid tokens' do
      calc = RPNCalc.new
      parser = RPNParser.new calc
      parser.parse("5 4 foo+").should be_nil
      parser.parse("6bar +").should eq 9
    end
    it 'correctly handles multiline operations' do
      calc = RPNCalc.new
      parser = RPNParser.new calc
      parser.parse("5 4")
      parser.parse("6")
      parser.parse("+ *").should eq 50
    end
  end
end