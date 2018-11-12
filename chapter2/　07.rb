module Modu
  def m1(x,y)
    x + y
  end
end

class Base
  def m1(x,y)
    x * y
  end
end

class Sub < Base
  #include Modu  <- モジュールをincludeすると、Sub < Modu < Baseの順になる。
  def m1(x,y)
    super # superに引数をつけない場合、引数はsuperに引き継がれる。
  end
end

sub = Sub.new

puts sub.m1(2,3)