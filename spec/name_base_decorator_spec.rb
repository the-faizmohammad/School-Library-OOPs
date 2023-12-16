require './name_base_decorator'

describe NameDecorator do
  let(:nameable) { double('Nameable') }
  let(:name_decorator) { NameDecorator.new(nameable) }

  describe '#initialize' do
    it 'initializes with a nameable object' do
      expect(name_decorator.instance_variable_get(:@nameable)).to eq(nameable)
    end
  end

  describe '#correct_name' do
    it 'delegates to the correct_name method of the nameable object' do
      allow(nameable).to receive(:correct_name).and_return('John Doe')

      expect(name_decorator.correct_name).to eq('John Doe')
    end
  end
end
