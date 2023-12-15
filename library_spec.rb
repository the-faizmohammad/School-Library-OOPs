require './book'
require './person'
require './student'
require './teacher'
require './classroom'
require './rental'

RSpec.describe Book do
  it 'creates a book with a title and author' do
    book = Book.new('Title', 'Author')
    expect(book.title).to eq('Title')
    expect(book.author).to eq('Author')
  end
end

RSpec.describe Person do
  it 'creates a person with age and name' do
    person = Person.new(20, 'John Doe')
    expect(person.age).to eq(20)
    expect(person.name).to eq('John Doe')
  end
end

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

RSpec.describe Teacher do
  it 'determines if a teacher can use services' do
    teacher = Teacher.new('Math', 35, 'Mr. Smith')
    expect(teacher.can_use_services?).to eq(true)
  end
end

RSpec.describe Classroom do
  it 'creates a classroom with a label' do
    classroom = Classroom.new('Room 101')
    expect(classroom.label).to eq('Room 101')
  end
end

RSpec.describe Rental do
  it 'creates a rental with a date, book, and person' do
    book = Book.new('Title', 'Author')
    person = Person.new(25, 'Jane Doe')
    rental = Rental.new('2023-01-01', book, person)

    expect(rental.date).to eq('2023-01-01')
    expect(rental.book).to eq(book)
    expect(rental.person).to eq(person)
  end
end
