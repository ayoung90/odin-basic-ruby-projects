require './spec/spec_helper'
require_relative '../code/sub_strings'

RSpec.describe 'Sub Strings' do
  dictionary = %w[below down go going horn how howdy it i low own part partner sit]

  describe 'Check single word' do
    it 'Single word should have 2 items in dictionary' do
      expected_hash = { 'below' => 1, 'low' => 1 }

      expect(substrings('below', dictionary)).to eq(expected_hash)
    end
  end

  describe 'Check multiple words' do
    it 'Multiple word should have 11 items in dictionary' do
      expected_hash = { 'down' => 1, 'go' => 1, 'going' => 1, 'how' => 1, 'howdy' => 1, 'it' => 1, 'i' => 1, 'own' => 1, 'part' => 1,
                        'partner' => 1, 'sit' => 1 }

      expect(substrings("Howdy partner, sit down! How's it going?", dictionary)).to eq(expected_hash)
    end
  end
end
