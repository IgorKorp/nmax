# frozen_string_literal: true

RSpec.describe Nmax do
  it "has a version number" do
    expect(Nmax::VERSION).not_to be nil
  end

  context '.call' do
    it "return maximum N numbers" do
      result = Nmax::SearchNumbersInIO.new(File::open('spec/test.txt'), 3).call
      expect(result).to eq([123456789101112131415, 9090909090909090, 999999999])
    end
  end
end
