require 'rspec'

describe 'Your code' do
  [['solution::code']]

  {
    variable_types: 3,
    language: 'Ruby',
    learned: true
  }.each do |variable, value|
    it "defines a variable with name \"#{variable}\"" do
      expect(local_variables.include?(variable)).to be true
    end

    if local_variables.include?(variable)
      displayed_value = value.is_a?(String) ? "\"#{value}\"" : value

      it "defines a variable \"#{variable}\" with the value #{displayed_value}" do
        expect(eval(variable.to_s)).to eq value
      end
    end
  end
end
