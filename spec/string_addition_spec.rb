require_relative '../string_addition'
require 'byebug'
RSpec.describe 'String Operations' do
  describe '#add' do
    it 'returns 0 for empty' do
      expect(add("")).to eq(0)
    end

    it 'returns a numebr itself if input contains single number' do
      expect(add("1")).to eq(1)
    end

    it 'returns sum of two numbers if input contains two comma separated numbers' do
      expect(add("1, 2")).to eq(3)
    end

    it 'returns sum of all numbers if input contains comma separated numbers' do
      expect(add("1, 2, 3, 4, 5")).to eq(15)
    end

    it 'returns sum of two numbers if input contains new line in between two numbers' do
      expect(add("1\n2")).to eq(3)
      expect(add("\n2,1")).to eq(3)
      expect(add("1,2\n")).to eq(3)
      expect(add("1\n,2,3\n4,5")).to eq(15)
    end

    it 'Numbers bigger than 1000 should be ignored' do 
      expect(add("2,1002")).to eq(2)
    end

    it 'throws an exception if multiple negative numbers are included' do
      expect { add("1,-2,3,-4") }.to raise_error(RuntimeError, "Negatives not allowed: -2, -4")
    end

    it 'throws an exception if negative numbers are in custom delimiter format' do
      expect { add("//;\\n1;2;-3;4") }.to raise_error(RuntimeError)
    end

    it 'Allow input contains custom Delimeter Seperated' do
      expect(add("//;\\n1;2")).to eq(3)
    end

    it 'Allow input contains any custom Delimeter Seperated' do
      expect(add("//;\\n1XY;2_+3(4)$5")).to eq(15)
    end

    it 'Allow multiple delimiters with longer length' do
      expect(add("//[****]\\n1****2****3")).to eq(6) 
    end

    it 'Allow multiple delimiters' do
      expect(add("//[*][%]\n1*2%3")).to eq(6) 
    end
  end
end


