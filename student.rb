require_relative 'Person'

class Student < Person
  def initialize(id, classroom:, name: 'Unknown', age: 0, parent_permission: true)
    super(id, name: name, age: age, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
