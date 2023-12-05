require_relative 'Person'

class Teacher < Person
  def initialize(id, name: "Unknown", age: 0, parent_permission: true, specialization:)
    super(id, name: name, age: age, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end