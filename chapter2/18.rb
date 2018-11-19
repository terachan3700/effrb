class Role
  def initialize(name, permissions)
    @name = name
    @permissions = Hash[permissions.map { |p| [p, true] }]
  end

  def can?(permission)
    @permissions.include?(permission)
  end
end


role = Role.new("terada",%w(a b c))
puts role

puts role.can?('e')

