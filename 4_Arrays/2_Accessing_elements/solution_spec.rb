require 'rspec'
require 'code_breaker'

VARIABLES = [:languages, :first, :last, :some_languages].freeze

describe 'Your code' do
  [['solution::code']]

  VARIABLES.each do |name|
    it "defines a variable with name \"#{name}\"" do
      expect(local_variables.include?(name)).to be true
    end

    if local_variables.include?(name)
      if [:languages, :some_languages].include?(name)
        it "assigns an Array to the variable \"#{name}\"" do
          expect(eval(name.to_s)).to be_an_instance_of Array
        end
      elsif local_variables.include?(:languages) && name == :first
        it "assigns the first language to the variable \"#{name}\"" do
          expect(eval(name.to_s)).to eq languages.first
        end
      elsif local_variables.include?(:languages) && name == :last
        it "assigns the last language to the variable \"#{name}\"" do
          expect(eval(name.to_s)).to eq languages.last
        end
      end

      if name == :languages
        it "assigns an Array to the variable \"#{name}\" with 5 String elements" do
          values = Array.new(eval(name.to_s))
          expect(values.length).to eq 5
          values.each { |value| expect(value).to be_an_instance_of String }
        end
      end

      if local_variables.include?(:languages) && name == :some_languages
        it "assigns an Array to the variable \"#{name}\" with 5 String elements" do
          expect(eval(name.to_s)).to eq languages[1..3]
        end
      end
    end
  end
end
