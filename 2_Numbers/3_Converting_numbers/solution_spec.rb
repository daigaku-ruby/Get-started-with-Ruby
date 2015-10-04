require 'rspec'
require 'rspec/expectations'
require 'code_breaker'

RSpec::Matchers.define :run_number_conversions do |expected|
  METHODS = {
    to_i: 'to integer',
    to_f: 'to float',
    to_r: 'to Rational number',
    to_c: 'to Complex number'
  }

  match do |actual|
    CodeBreaker.parse(actual).include?(expected)
  end

  failure_message do |actual|
    expected_operants = expected.values.first
    variable_name = expected_operants[0]

    expected_method = METHODS[expected_operants[1][1]]
    expected_conversion = "#{variable_name} = #{expected_operants[1][0]} #{expected_method}"

    actual_line = actual.split("\n").select do |output|
      output.match(/#{variable_name} =.+/)
    end

    actual_parsed = CodeBreaker.parse(actual_line.join)
    actual_operants = actual_parsed.values.first
    actual_conversion = "#{variable_name} = #{[actual_operants[1]].flatten.join(' ')}"

    %Q{Your code doesn't run the number conversion "#{expected_conversion}".
      ------- Instead you defined "#{actual_conversion}".}
  end
end

# code_breaker outputs
CONVERSIONS = [
  { lvasgn: [:integer, [Complex, :to_i]] },
  { lvasgn: [:float, [Fixnum, :to_f]] },
  { lvasgn: [:rational, [Float, :to_r]] },
  { lvasgn: [:complex, [Rational, :to_c]] }
].freeze

describe "Your code" do
  [['solution::code']]

  CONVERSIONS.each do |conversion|
    variable_name = conversion.first.last.first
    values = conversion.values.first.last

    it "defines a variable with name \"#{variable_name}\"" do
      expect(local_variables.include?(variable_name)).to be true
    end

    if local_variables.include?(variable_name)
      article = !!variable_name.match(/^[eioa]/) ? 'an' : 'a'

      it "converts a #{values.first} number to #{article} #{variable_name}" do
        code_lines = %Q{ [['solution::code']] }
        expect(code_lines).to run_number_conversions(conversion)
      end
    end
  end
end
