require './classroom'

RSpec.describe Classroom do
  it 'creates a classroom with a label' do
    classroom = Classroom.new('Room 101')
    expect(classroom.label).to eq('Room 101')
  end
end
