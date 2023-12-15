require 'classroom'

RSpec.describe Classroom do
  let(:classroom_label) { 'Math Class' }
  let(:student) { double('Student') }

  describe '#initialize' do
    it 'creates a new Classroom instance with a label' do
      classroom = Classroom.new(classroom_label)
      expect(classroom.label).to eq(classroom_label)
      expect(classroom.students).to be_empty
    end
  end

  describe '#add_student' do
    it 'adds a student to the classroom' do
      classroom = Classroom.new(classroom_label)
      classroom.add_student(student)
      expect(classroom.students).to include(student)
    end

    it 'sets the classroom for the added student' do
      classroom = Classroom.new(classroom_label)
      expect(student).to receive(:classroom=).with(classroom)
      classroom.add_student(student)
    end
  end
end
