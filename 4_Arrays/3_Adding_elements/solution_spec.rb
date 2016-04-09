require 'rspec'
require 'code_breaker'

describe 'Your code' do
  [['solution::code']]

  VARIABLE = :baggage
  ITEMS    = ['glasses', 'shirt', 'trousers', 'socks', 'shoes']

  it 'defines a variable with name "baggage"' do
    expect(local_variables.include?(VARIABLE)).to be true
  end

  if local_variables.include?(VARIABLE)
    it 'defines a variables "baggage" that has all the items' do
      expect(eval(VARIABLE.to_s)).to eq ITEMS
    end

    if eval(VARIABLE.to_s) == ITEMS
      before(:all) do
        @statements = CodeBreaker.parse( %q{ [['solution::code']] })
      end

      it 'uses the unshift method to add "glasses"' do
        unshift = [{ lvar: VARIABLE }, :unshift, String]
        expect(@statements.include?(unshift)).to be true
      end

      it 'uses the push or << method to add "shoes"' do
        push = [{ lvar: VARIABLE }, :push, String]
        arrows = [{ lvar: VARIABLE }, :<<, String]

        includes_code = @statements.include?(push) || @statements.include?(arrows)
        expect(includes_code).to be true
      end

      it 'uses the insert method to add "trousers" and "socks"' do
        insert = [{ lvar: VARIABLE }, :insert, Fixnum, String, String]
        expect(@statements.include?(insert)).to be true
      end
    end
  end
end
