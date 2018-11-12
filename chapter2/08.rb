class Parent
  attr_reader(:name)

  def initialize
    @name = "Howard"
  end
end

class Child < Parent
  attr_reader(:grade)

  def initialize
    @grade = 8
  end
end

adult = Parent.new
puts adult.name

youngster = Child.new
puts youngster.name    #<- superを明示的に呼び出さないと取得できない。