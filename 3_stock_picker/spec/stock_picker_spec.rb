require 'spec_helper'
require_relative '../code/stock_picker'

RSpec.describe 'Stock Picker' do
  describe 'Check price scenarios' do
    it 'Example in Assignment should work' do
      prices_array = [17, 3, 6, 9, 15, 8, 6, 1, 10]
      expected_array = [1, 4]

      expect(stock_picker(prices_array)).to eq(expected_array)
    end

    it 'price array of 25' do
      prices_array = [16, 3, 11, 7, 10, 17, 18, 13, 7, 11, 13, 6, 17, 4, 18, 13, 4, 6, 3, 18, 18, 6, 10, 6, 8]
      expected_array = [1, 6]

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

    it 'Handle empty array' do
      prices_array = []
      expected_error = 'Price List must not be empty'

      expect(stock_picker(prices_array)).to eq(expected_error)
    end

    it 'Handle non integers in array' do
      prices_array = [1, 2, '4', 5]
      expected_error = 'Prices must be Integers'

      expect(stock_picker(prices_array)).to eq(expected_error)
    end
  end
end
