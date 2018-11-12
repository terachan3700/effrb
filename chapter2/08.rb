class Parent
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Child < Parent
  def initialize(name, grade)
    super(name)
    @grade = grade
  end
end


youngster = Child.new('Abigail', '8')
puts youngster.name