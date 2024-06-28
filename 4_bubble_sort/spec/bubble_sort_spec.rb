require 'spec_helper'
require_relative '../code/bubble_sort'

RSpec.describe 'Bubble Sort' do
  describe 'Check different arrays' do
    it 'Example in Assignment should work' do
      input_array = [4, 3, 78, 2, 0, 2]
      sorted_array = [0, 2, 2, 3, 4, 78]

      expect(bubble_sort(input_array)).to eq(sorted_array)
    end

    it 'Array of 25 items' do
      input_array = [16, 3, 11, 7, 10, 17, 18, 13, 7, 11, 13, 6, 17, 4, 18, 13, 4, 6, 3, 18, 18, 6, 10, 6, 8]
      sorted_array = [3, 3, 4, 4, 6, 6, 6, 6, 7, 7, 8, 10, 10, 11, 11, 13, 13, 13, 16, 17, 17, 18, 18, 18, 18]

      expect(bubble_sort(input_array)).to eq(sorted_array)
    end
  end

  describe 'Handle Edge cases' do
    it 'Empty array' do
      input_array = []
      sorted_array = []

      expect(bubble_sort(input_array)).to eq(sorted_array)
    end
  end
end
