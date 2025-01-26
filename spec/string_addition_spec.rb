require_relative '../string_addition'

RSpec.describe 'String Operations' do
  describe '#add' do
    it 'adds two numbers correctly' do
      expect(add(2, 3)).to eq(5)
    end
  end
end


