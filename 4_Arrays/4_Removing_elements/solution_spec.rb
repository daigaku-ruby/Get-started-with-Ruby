require 'rspec'
require 'code_breaker'

describe 'Your code' do
  [['solution::code']]

  VARIABLE = :baggage
  ITEMS    = ['shoes', 'underwear', 'socks', 'kettle', 'glasses', 'shirt', 'wallet']

  it 'defines a variable with name "baggage"' do
    expect(local_variables.include?(VARIABLE)).to be true
  end

  if local_variables.include?(VARIABLE)
    before(:all) do
      @statements = CodeBreaker.parse(%q{ [['solution::code']] })
    end

    it 'uses the shift method to remove "shoes"' do
      shift = [{ lvar: VARIABLE }, :shift]
      expect(@statements.include?(shift)).to be true
    end

    it 'uses the delete method to remove the "kettle"' do
      delete = [{ lvar: VARIABLE }, :delete, String]
      expect(@statements.include?(delete)).to be true
    end

    it 'uses the pop method to remove the "wallet"' do
      pop = [{ lvar: VARIABLE }, :pop]
      expect(@statements.include?(pop)).to be true
    end

    it 'changes your baggage to only contain "underwear", "socks", "glasses", & "shirt"' do
      expect(eval(VARIABLE.to_s)).to eq ['underwear', 'socks', 'glasses', 'shirt']
    end
  end
end
