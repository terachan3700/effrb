class Singleton
  private_class_method(:new, :dup, :clone)
  def self.instance
    @single ||= new
  end
end

sin = Singleton.instance
sin2 = Singleton.instance

puts sin.object_id
puts sin2.object_id

class Configuration < Singleton
end

class Database < Singleton
end

# 継承しても、同じオブジェクトになる。
# スーパークラスのクラス変数はそのクラスと全てのサブクラスの間で共有される。
puts Configuration.instance.object_id
puts Database.instance.object_id
