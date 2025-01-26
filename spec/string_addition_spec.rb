require_relative '../string_addition'
require 'byebug'
RSpec.describe 'String Operations' do
  describe '#add' do
    it 'returns 0 for empty' do
      expect(add("")).to eq(0)
    end
  end
end


