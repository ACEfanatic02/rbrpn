require_relative '../rbrpn/rbrpn.rb'

describe RPNCalc do
  describe '#add' do
    it 'returns the sum of top arguments on stack' do
      calc = RPNCalc.new
      calc.push 5
      calc.push 4
      calc.add.should eq 9
    end
    it 'returns 0 for an empty stack' do
      calc = RPNCalc.new
      calc.add.should eq 0
    end
  end
end