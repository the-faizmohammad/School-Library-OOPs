require './trimmer_decorator'

describe TrimmerDecorator do
  let(:nameable) { double('Nameable') }
  let(:trimmer_decorator) { TrimmerDecorator.new(nameable) }

  describe '#correct_name' do
    context 'when the original name is longer than 10 characters' do
      it 'trims the name to a maximum of 10 characters' do
        allow(nameable).to receive(:correct_name).and_return('LongName12345')

        expect(trimmer_decorator.correct_name).to eq('LongName12')
      end
    end

    context 'when the original name is 10 characters or shorter' do
      it 'returns the original name without modification' do
        allow(nameable).to receive(:correct_name).and_return('ShortName')

        expect(trimmer_decorator.correct_name).to eq('ShortName')
      end
    end
  end
end
