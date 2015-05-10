require 'rspec'

[['solution::code']]

describe 'Your code' do
  it "defines a class Programmer" do
    expect(Object.const_defined?('Programmer')).to be true
  end

  if Object.const_defined?('Programmer')
    describe Programmer do
      it "allows instantiating a new Programmer" do
        expect { Programmer.new }.not_to raise_error
      end

      it "defines a Programmer class without any methods" do
        expect(Programmer.public_instance_methods(false)).to be_empty
        expect(Programmer.singleton_methods(false)).to be_empty
        expect(subject.protected_methods(false)).to be_empty
        expect(subject.private_methods(false)).to be_empty
      end
    end

  end
end
