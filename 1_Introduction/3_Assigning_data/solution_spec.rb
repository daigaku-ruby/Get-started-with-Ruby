require 'rspec'

describe 'Your code' do

  describe do
    before do
      allow($stdout).to receive(:puts) {''}
      allow($stdout).to receive(:p) {''}
      allow($stdout).to receive(:print) {''}
    end

    it 'defines a variable "variable_types" with the value 3' do
      [['solution::code']]
      expect(!!defined?(variable_types)).to be true
      expect(variable_types).to eq 3
    end

    it 'defines a variable "language" with the value \'Ruby\'' do
      [['solution::code']]
      expect(!!defined?(language)).to be true
      expect(language).to eq 'Ruby'
    end

    it 'defines a variable "learned" with the value true' do
      [['solution::code']]
      expect(!!defined?(learned)).to be true
      expect(learned).to eq true
    end
  end

  it 'puts the values of all defined variables to the standard output' do
    expect($stdout).to receive(:puts).with(3)
    expect($stdout).to receive(:puts).with('Ruby')
    expect($stdout).to receive(:puts).with(true)
    [['solution::code']]
  end
end
