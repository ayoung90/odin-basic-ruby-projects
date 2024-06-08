# test flag: used to skip input during rspec unit tests
$test_mode = true

require 'spec_helper'
require_relative '../code/ceaser_cipher'

RSpec.describe 'Ceaser Cipher' do
  describe 'set shift amount' do
    it 'sets $shift to 3' do
      init_shift_amount(3)
      expect($shift).to eq(3)
    end

    # TODO: test other values etc
  end

  # TODO: tests for encoding
  describe 'encode_cipher' do
    it 'check encoded value' do
    end
  end
end
