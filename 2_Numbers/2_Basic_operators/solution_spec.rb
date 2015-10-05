require 'rspec'
require 'rspec/expectations'
require 'code_breaker'

RSpec::Matchers.define :run_number_operations do |expected|
  match do |actual|
    CodeBreaker.parse(actual).include?(expected)
  end

  failure_message do |actual|
    expected_operants = expected.values.first
    variable_name = expected_operants[0]
    expected_operation = "#{variable_name} = #{expected_operants[1].join(' ')}"

    actual_line = actual.split("\n").select do |output|
      output.match(/#{variable_name} =.+/)
    end

    actual_parsed = CodeBreaker.parse(actual_line.join)
    actual_operants = actual_parsed.values.first
    actual_operation = "#{variable_name} = #{actual_operants[1].join(' ')}"

    %Q{Your code doesn't run the number operation "#{expected_operation}".
      ------- Instead you calculated "#{actual_operation}".}
  end
end

# code_breaker outputs
OPERATIONS = [
  { lvasgn: [:sum, [Rational, :+, Rational]] },
  { lvasgn: [:difference, [Bignum, :-, Float]] },
  { lvasgn: [:product, [Float, :*, Float, :*, Float]] },
  { lvasgn: [:quotient, [Complex, :/, Float]] },
  { lvasgn: [:power, [Rational, :**, Float]] }
].freeze

describe "Your code" do
  [['solution::code']]

  OPERATIONS.each do |operation|
    variable_name = operation.first.last.first
    values = operation.values.first.last

    it "defines a variable with name \"#{variable_name}\"" do
      expect(local_variables.include?(variable_name)).to be true
    end

    if local_variables.include?(variable_name)
      operants  = values.select.each_with_index { |_, i| i.even? }
      same_operants = (operants.uniq.count == 1)

      numbers = if same_operants
        "#{operants.count} #{values.first} numbers"
      else
        operants.join(' and a ')
      end

      it "calculates the #{variable_name} of #{numbers}" do
        code_lines = %Q{ [['solution::code']] }
        expect(code_lines).to run_number_operations(operation)
      end
    end
  end
end
