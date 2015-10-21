require 'rspec'
require 'rspec/expectations'
require 'code_breaker'

RSpec::Matchers.define :run_string_interpolation do |expected|
  match do |actual|
    interpolation = interpolation_part_of(actual)
    return false if interpolation.nil?
    interpolation[:lvasgn][1][:dstr] == expected
  end

  failure_message do |actual|
    actual_line = actual.split("\n").select do |line|
      line =~ /fullname\s?=.+/
    end

    parsed_line = CodeBreaker.parse(actual_line.join)
    interpolation = parsed_line[:lvasgn].last

    unless interpolation.is_a?(Hash) && interpolation[:dstr]
      return "You didn't do any string interpolation."
    end

    [['solution::code']]

    %Q{Your interpolated fullname shoud be "#{lastname}, #{firstname}"
    ------- but is "#{fullname}".}
  end

  def interpolation_part_of(actual)
    parsed = CodeBreaker.parse(actual)

    interpolation = parsed.select do |part|
      next unless part.is_a?(Hash)
      next unless part.has_key?(:lvasgn)
      next unless part[:lvasgn][0] == :fullname
      next unless part[:lvasgn][1].is_a?(Hash)

      part[:lvasgn][1].has_key?(:dstr)
    end

    interpolation.first
  end
end

describe "Your code" do
  [['solution::code']]

  VARIABLES = [:firstname, :lastname, :fullname].freeze

  VARIABLES.each do |name|
    it "defines a variable with name \"#{name}\"" do
      expect(local_variables.include?(name)).to be true
    end

    if name != :fullname && local_variables.include?(name)
      it "assigns a String to the variable \"#{name}\"" do
        expect(eval(name.to_s)).to be_a String
      end
    end
  end

  if (local_variables & VARIABLES).sort == VARIABLES.sort
    it "creates an interpolated String" do
      statement = [[{ lvar: :lastname }], String, [{ lvar: :firstname }]]
      code_lines = %q{ [['solution::code']] }

      expect(code_lines).to run_string_interpolation(statement)
    end
  end
end
