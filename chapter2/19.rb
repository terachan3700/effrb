def sum(enum)
  enum.reduce(0, :+)
end

puts sum([0,20,24])