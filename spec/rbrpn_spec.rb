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
    it 'returns the only value on the stack for a single entry' do
      calc = RPNCalc.new
      calc.push 5
      calc.add.should eq 5
    end
  end

  describe '#subtract' do
    it 'returns the difference of top arguments on stack' do
      calc = RPNCalc.new
      calc.push 5
      calc.push 4
      calc.subtract.should eq -1
    end
    it 'returns 0 for an empty stack' do
      calc = RPNCalc.new
      calc.subtract.should eq 0
    end
    it 'returns the only value on the stack for a single entry' do
      calc = RPNCalc.new
      calc.push 5
      calc.subtract.should eq 5
    end
  end
end