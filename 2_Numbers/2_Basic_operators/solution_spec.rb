require 'rspec'
require 'rspec/expectations'

# requires code_breaker gem to be installed
# (https://github.com/daigaku-ruby/code_breaker)
require 'code_breaker'

RSpec::Matchers.define :run_number_operations do |expected|
  match do |actual|
    lines = actual.split("\n").compact.map(&:strip).reject(&:empty?)
    called_operations(lines).include?(expected)
  end

  def called_operations(lines)
    lines.map do |line|
      CodeBreaker.parse(line)
    end
  end

  failure_message do |actual|
    %Q{Your code doesn't run the number operation "#{expected.join(' ')}".}
  end
end

OPERATIONS = {
  sum:        [Rational, :+, Rational],
  difference: [Bignum, :-, Float],
  product:    [Float, :*, Float, :*, Float],
  quotient:   [Complex, :/, Float],
  power:      [Rational, :**, Float]
}.freeze

describe "Your code" do
  [['solution::code']]

  OPERATIONS.each do |operation, values|
    it "defines a variable with name \"#{operation}\"" do
      expect(local_variables.include?(operation)).to be true
    end

    if local_variables.include?(operation)
      operants  = values.select.each_with_index { |_, i| i.even? }
      same_operants = (operants.uniq.count == 1)

      numbers = if same_operants
        "#{operants.count} #{values.first} numbers"
      else
        operants.join(' and a ')
      end

      it "calculates the #{operation} of #{numbers}" do
        code_lines = %Q{ [['solution::code']] }
        expect(code_lines).to run_number_operations(values)
      end
    end
  end
end
