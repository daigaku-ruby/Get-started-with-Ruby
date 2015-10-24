require 'rspec'

describe "Your code" do
  [['solution::code']]

  {
    fixnum:   Fixnum,
    bignum:   Bignum,
    float:    Float,
    rational: Rational,
    complex:  Complex
  }.each do |variable, class_name|
    it "defines a variable with name \"#{variable}\"" do
      expect(local_variables.include?(variable)).to be true
    end

    if local_variables.include?(variable)
      it "defines a variable \"#{variable}\" which is a #{class_name}" do
        expect(eval(variable.to_s).class).to eq class_name
      end
    end
  end
end
