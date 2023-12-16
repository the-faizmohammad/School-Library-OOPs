require './nameable'

describe Nameable do
  let(:nameable_instance) { Nameable.new }

  describe '#correct_name' do
    it 'raises NotImplementedError' do
      expect do
        nameable_instance.correct_name
      end.to raise_error(NotImplementedError, /has not implemented method 'correct_name'/)
    end
  end
end
