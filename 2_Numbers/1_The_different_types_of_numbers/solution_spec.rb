require 'rspec'

describe "Your code" do
  [['solution::code']]

  {
    'fixnum' => Fixnum,
    'bignum' => Bignum,
    'rational' => Rational,
    'complex' => Complex
  }.each do |variable, class_name|
    it "defines a variable with name \"#{variable}\"" do
      expect(!!defined?(send(variable))).to be true
    end

    if defined?(send(variable))
      it "defines a variable \"#{variable}\" which is a #{class_name}" do
        expect(eval(variable).class).to eq class_name
      end
    end
  end
end
