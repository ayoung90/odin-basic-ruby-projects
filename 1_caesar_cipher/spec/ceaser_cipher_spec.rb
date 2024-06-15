require 'spec_helper'
require_relative '../code/ceaser_cipher'

RSpec.describe 'Ceaser Cipher' do
  describe 'check cipher input values' do
    it 'input hello world with factor 5' do
      expect(ceaser_cipher('hello world', 5)).to eq('mjqqt btwqi')
    end

    it 'input blah blah blah blah blah blah with factor 10' do
      expect(ceaser_cipher('blah blah blah blah blah blah', 10)).to eq('lvkr lvkr lvkr lvkr lvkr lvkr')
    end

    it 'check encoding keeps the same case' do
      expect(ceaser_cipher('TeStER', 6)).to eq('ZkYzKX')
    end

    # TODO: test other values etc
  end

  # TODO: tests for encoding
  describe 'wraparound from z to a' do
    it 'check wraparound with factor 250' do
      expect(ceaser_cipher('test wrap string', 250)).to eq('juij mhqf ijhydw')
    end
  end
end
