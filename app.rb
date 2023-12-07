require './student'
require './teacher'
require './book'
require './rental'
class App
  attr_accessor :books, :people, :rentals

 def initialize
    @books = []
    @people = []
    @rentals = []
  end

   def list_books
    @books.each { |book| puts "Title: \"#{book.title}\", Author: #{book.author}" }
  end

  
end
