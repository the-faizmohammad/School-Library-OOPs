require './capitalize_decorator'

describe CapitalizeDecorator do
  let(:nameable_double) { double('Nameable', correct_name: 'john_doe') }
  let(:name_decorator) { instance_double('NameDecorator', correct_name: 'john_doe') }
  let(:capitalize_decorator) { CapitalizeDecorator.new(nameable_double) }

  describe '#correct_name' do
    it 'capitalizes the correct_name from the wrapped Nameable instance' do
      expect(capitalize_decorator.correct_name).to eq('John_doe')
    end

    it 'delegates to the correct_name method of the wrapped NameDecorator' do
      allow(name_decorator).to receive(:correct_name).and_return('jane_doe')
      decorator = CapitalizeDecorator.new(name_decorator)
      expect(decorator.correct_name).to eq('Jane_doe')
    end
  end
end
