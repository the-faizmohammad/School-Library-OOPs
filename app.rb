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
def create_student
    print 'Age: '
    age = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp.to_s

    print 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp.to_s

    if parent_permission =~ /^[Yy]/
      student = Student.new('Unknown', age, name, parent_permission: true)
    elsif parent_permission =~ /^[Nn]/
      student = Student.new('Unknown', age, name, parent_permission: false)
    else
      puts 'Ivalid Value!!'
      return
    end

    @people.push(student)
    puts 'Person Created Successfully'
  end
  def create_teacher
    print 'Age: '
    age = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp.to_s

    print 'Specialization: '
    specialization = gets.chomp.to_s

    teacher = Teacher.new(specialization, age, name)
    @people.push(teacher)
    puts 'Person Created Successfully'
  end
end
