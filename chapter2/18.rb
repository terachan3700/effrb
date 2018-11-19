require('Set')

class Role
  def initialize(name, permissions)
    @name, @permissions = name, Set.new(permissions)
  end

  def can?(permission)
    @permissions.include?(permission)
  end
end


role = Role.new("terada", %w(a b c))
puts role

puts role.can?('e')

