require 'open3'
require_relative '../fizzbuzz'

describe 'FizzBuzz' do
  before :all do
    @output, stderr, status = Open3.capture3('ruby fizzbuzz.rb')
    @lines = @output.split("\n")
  end

  it 'prints numbers for non-multiples of 3 and 5' do
    expect(@lines[0]).to eq '1'
  end

  it 'prints "Fizz" for multiples of 3 that are not multiples of 5' do
    expect(@lines[2]).to eq 'Fizz'
  end

  it 'prints "Buzz" for multiples of 5 that are not multiples of 3' do
    expect(@lines[4]).to eq 'Buzz'
  end

  it 'prints "FizzBuzz" for multiples of 15' do
    expect(@lines[14]).to eq 'FizzBuzz'
  end
end
