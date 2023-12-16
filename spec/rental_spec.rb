require './rental'

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
