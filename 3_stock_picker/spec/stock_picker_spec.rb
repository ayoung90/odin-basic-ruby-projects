require 'spec_helper'
require_relative '../code/stock_picker'

RSpec.describe 'Stock Picker' do
  describe 'Check price scenarios' do
    it 'Example in Assignment should work' do
      prices_array = [17, 3, 6, 9, 15, 8, 6, 1, 10]
      expected_array = [1, 4]

      expect(stock_picker(prices_array)).to eq(expected_array)
    end
  end

  describe 'Handle Edge cases' do
    it 'lowest day is the last day' do
      prices_array = [5, 7, 6, 9, 15, 8, 6, 10, 1]
      expected_array = [0, 4]

      expect(stock_picker(prices_array)).to eq(expected_array)
    end

    it 'highest day is the first day' do
      prices_array = [25, 7, 6, 9, 15, 16, 10, 8]
      expected_array = [2, 5]

      expect(stock_picker(prices_array)).to eq(expected_array)
    end
  end
end
