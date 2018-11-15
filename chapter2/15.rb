class Singleton
  private_class_method(:new, :dup, :clone)
  def self.instance
    @@single ||= new
  end
end

sin = Singleton.instance
sin2 = Singleton.instance

puts sin.object_id
puts sin2.object_id
