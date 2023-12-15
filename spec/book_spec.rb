require './book'

RSpec.describe Book do
  it 'creates a book with a title and author' do
    book = Book.new('Title', 'Author')
    expect(book.title).to eq('Title')
    expect(book.author).to eq('Author')
  end
end
