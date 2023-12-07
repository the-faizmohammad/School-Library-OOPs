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

  def list_people
    @people.each do |person|
      puts "[#{person.class.name}] \"#{person.name}\", ID: #{person.id}, Age: #{person.age}"
    end
  end

  def list_rentals
    print 'Enter Person ID: '
    id = gets.chomp.to_i
    record = @rentals.find_all { |rental| rental.person.id == id }
    if record.nil?
      puts 'ID not found!'
      return
    end
    puts "Rentals found with ID: #{id}"
    record.map { |rental| puts "Date: #{rental.date} - Book \"#{rental.book.title}\" by #{rental.book.author}" }
  end
def create_person
    print 'Do you want to create a student (1) or a Teacher (2)? [Input the number]: '
    person = gets.chomp.to_i
    if person == 1
      create_student
    elsif person == 2
      create_teacher
    else
      puts "#{person} is an nvalid option! "
    end
  end

end
