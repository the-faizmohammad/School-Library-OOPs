require './student'


RSpec.describe Student do
  let(:classroom) { Classroom.new('Room 101') }
    let(:student) { Student.new(classroom, 18, 'Alice') }

  it 'creates a student with a classroom, age, and name' do
    expect(student.classroom).to eq(classroom)
    expect(student.age).to eq(18)
    expect(student.name).to eq('Alice')
  end

  it 'sets a new classroom for the student' do
    new_classroom = Classroom.new('Room 102')
    student.classroom = new_classroom
    expect(student.classroom).to eq(new_classroom)
    expect(new_classroom.students).to include(student)
  end
end
