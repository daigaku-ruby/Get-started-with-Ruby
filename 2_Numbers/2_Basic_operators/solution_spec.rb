require 'rspec'

describe "Your code" do
  [['solution::code']]

  sum = Rational(1, 2) + Rational(2, 4)
  difference = 100_000_000_000_000 - 2500.25
  product = 1.578 + 2.7 + 0.42
  quotient = Complex(3.5, 5.25) / 8.75
  power = Rational(11/13) ** 11.13


  {
    sum: [Rational, Rational, :+],
    difference: [Bignum, Float, :-],
    product: [Float, Float, Float, :*],
    quotient: [Complex, Float, :/],
    power: [Rational, Float, :**]
  }.each do |operation, values|
    it "defines a variable with name \"#{operation}\"" do
      expect(local_variables.include?(operation)).to be true
    end

    if local_variables.include?(operation)
      same_operants = (values[0..-2].uniq.count == 1)

      class_list = if same_operants
        "#{values[0..-2].count} #{values.first} numbers"
      else
        values[0..-2].join(' and a ')
      end

      it "calculates the #{operation} of #{class_list}" do
        expect_any_instance_of(values.first)
          .to receive(values.last).exactly(values.count - 2).times

        [['solution::code']]
      end
    end
  end
end
