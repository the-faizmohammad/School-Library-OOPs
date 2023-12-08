require './app'

class LibraryApp
  def initialize
    @app = App.new
  end

  def display_options
    puts "\nPlease choose an option by entering a number:\n
    1 - List all Books
    2 - List all People
    3 - Create a Person
    4 - Create a Book
    5 - Create a Rental
    6 - List all rentals for a given person id
    7 - Exit"
  end

  def welcome_message
    puts 'Welcome to Indian School Library App!'
  end

  def get_user_option
    print 'Enter your choice: '
    gets.chomp.to_i
  end

  def process_option(option)
    case option
    when 1 then @app.list_books
    when 2 then @app.list_people
    when 3 then @app.create_person
    when 4 then @app.create_book
    when 5 then @app.create_rental
    when 6 then @app.list_rentals
    else
      puts 'Choose between 1 - 7'
    end
  end

  def run
    welcome_message
    loop do
      display_options
      option = get_user_option
      break if option == 7

      process_option(option)
    end
  end
end

LibraryApp.new.run
