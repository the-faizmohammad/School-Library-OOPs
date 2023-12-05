def initialize(id, name: 'Unknown', age: 0, parent_permission: true)
  @id = id
  @name = name
  @age = age
  @parent_permission = parent_permission
end

attr_writer :name

attr_writer :age

def can_use_services?
  of_age? || @parent_permission
end

  private

def of_age?
  @age >= 18
end
