require './person'

RSpec.describe Person do
  it 'creates a person with age and name' do
    person = Person.new(20, 'John Doe')
    expect(person.age).to eq(20)
    expect(person.name).to eq('John Doe')
  end
end
