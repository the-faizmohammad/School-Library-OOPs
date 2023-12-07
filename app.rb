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
end
