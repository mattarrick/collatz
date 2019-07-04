require 'spec_helper'

RSpec.describe "collatz" do 
  describe 'should return 1' do
    it 'should return an array with 1' do
      expect(collatz(1)).to eq [1]
    end
  end

  describe 'should return and array of [2, 1]' do
    it 'should return an array of [2, 1]' do
      expect(collatz(2)).to eq [2, 1]
    end

    it 'should an array of [3, 10, 5, 16, 8, 4, 2, 1]' do
      expect(collatz(3)).to eq [3, 10, 5, 16, 8, 4, 2, 1]
    end
  end
end