require 'rspec'
require 'rspec/expectations'
require 'code_breaker'

VARIABLES = [:objects, :question_marks].freeze

def code_lines
  %q{[['solution::code']]}
end

def statements
  @statements ||= Array(CodeBreaker.parse(code_lines))
end

def assignment?(statement)
  statement.is_a?(Hash) && statement.keys.first == :lvasgn
end

def brackets_statement
  @brackests_statement ||= statements.select do |statement|
    assignment?(statement) && statement[:lvasgn].first == VARIABLES.first
  end
end

def new_statement
  @new_statement ||= statements.select do |statement|
    assignment?(statement) && statement[:lvasgn].first == VARIABLES.last
  end
end

def array_assigned?(variable)
  !!defined?(variable) && variable.is_a?(Array)
end

def array_defined_with_new?(variable, statement)
  array_assigned?(variable) &&
  statement.first[:lvasgn][1][0..1] == [{ const: :Array }, :new]
end

describe 'Your code' do
  [['solution::code']]

  VARIABLES.each do |name|
    it "defines a variable with name \"#{name}\"" do
      expect(local_variables.include?(name)).to be true
    end

    if local_variables.include?(name)
      it "assigns an Array to the variable \"#{name}\"" do
        expect(eval(name.to_s)).to be_an Array
      end
    end
  end

  if (local_variables & VARIABLES).sort == VARIABLES.sort
    describe 'assings an Array to "objects" which' do
      it 'is created by using []' do
        expect(array_assigned?(objects)).to be true
        expect(brackets_statement.first[:lvasgn].last.keys.first).to eq :array
      end

      if array_assigned?(objects)
        before { @values = brackets_statement.first[:lvasgn].last[:array] }

        it 'holds a Float' do
          expect(@values.include?(Float)).to be true
        end

        it 'holds a Boolean' do
          included = @values.include?(TrueClass) || @values.include?(FalseClass)
          expect(included).to be true
        end

        it 'holds an empty Array' do
          empty_array = { array: [] }
          expect(@values.include?(empty_array)).to be true
        end
      end
    end

    describe 'assings an Array to "question_marks" which' do
      it 'is created by using #new' do
        expect(array_defined_with_new?(question_marks, new_statement)).to be true
      end

      if array_defined_with_new?(question_marks, new_statement)
        it 'holds three times "?"' do
          expect(question_marks).to eq ['?'] * 3
        end
      end
    end
  end
end
