require '/rental'

RSpec.describe Teacher do
  it 'determines if a teacher can use services' do
    teacher = Teacher.new('Math', 35, 'Mr. Smith')
    expect(teacher.can_use_services?).to eq(true)
  end
end
