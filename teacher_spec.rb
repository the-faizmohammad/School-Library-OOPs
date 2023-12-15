require './teacher'

describe Teacher do
  subject { Teacher.new('Math', 30, 'John Doe') }

  describe '#initialize' do
    it 'inherits attributes from Person' do
      expect(subject.age).to eq(30)
      expect(subject.name).to eq('John Doe')
    end

    it 'sets the specialization attribute' do
      expect(subject.specialization).to eq('Math')
    end

    it 'allows setting parent_permission explicitly' do
      teacher = Teacher.new('Math', 30, 'Jane Doe', parent_permission: false)
      expect(teacher.parent_permission).to be_falsy
    end
  end

  describe '#can_use_services?' do
    it 'returns true' do
      expect(subject.can_use_services?).to be_truthy
    end
  end
end
