require 'rspec'
require 'rspec/expectations'

RSpec::Matchers.define :use_multiplication_of_strings do
  match { |actual| actual =~ /['"]o['"]\s?\*\s?\d+/ }

  failure_message do |actual|
    %Q{Your code doesn't use the * method to add the "o"s}
  end
end

RSpec::Matchers.define :concat_the_ordinal_number do |expected|
  match { |actual| actual =~ /(<<[\(\s]?#{expected}\)?|\.concat[\(\s]#{expected}\(?)/ }

  failure_message do |actual|
    %Q{Your code doesn't add "#{expected.chr}" by using the ordinal number}
  end
end

def code_line
  %q{[['solution::code']]}
end

def code
  @code ||= eval(code_line)
end

describe 'Your code' do
  it 'creates a String' do
    expect(code).to be_a String
  end

  it 'adds whitespace by using the ordinal number' do
    expect(code_line).to concat_the_ordinal_number 32
  end

  it 'uses the * method to create the "ooooo"' do
    expect(code_line).to use_multiplication_of_strings
  end

  it 'adds an exclamation mark by using the ordinal number' do
    expect(code_line).to concat_the_ordinal_number 33
  end


  if code.is_a?(String)
    it 'forms the String "Ruby rooooocks!"' do
      expect(code.strip).to eq 'Ruby rooooocks!'
    end
  end
end
