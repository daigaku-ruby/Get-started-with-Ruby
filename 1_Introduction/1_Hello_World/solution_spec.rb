require 'rspec'

describe 'Your code' do
  it 'prints out "Hello World"' do
    expect { [['solution::code']] }.to output('Hello World').to_stdout
  end
end
