class Role
  def initialize(name, permissions)
    @name, @permissions = name, permissions
  end

  def can?(permission)
    @permissions.include?(permission)
  end
end