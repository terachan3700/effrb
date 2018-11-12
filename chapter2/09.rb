class SetMe
  def initialize
    @value = 0
  end

  def value # ゲッター
    @value
  end

  def value= (x) # セッター
    @value = x
  end
end

x = SetMe.new

x.value = 1

puts x.value

class Counter
  attr_accessor(:counter)

  def initialize
    # counter = 0      #<- selfをつけない場合、スコープが終わるとcounterを捨ててまう。
    self.counter = 0
    # @counter = 0     #<- インスタンス変数でもよい
  end

  def counter_next
    counter + 1        #<- こっちはselfいらない。セッターでないから
  end
end

con = Counter.new
puts con.counter
puts con.counter_next
