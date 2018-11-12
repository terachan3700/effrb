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