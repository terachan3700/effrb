def sum(enum)
  enum.reduce(0, :+)
end

puts sum([0,20,24])

array = %w(a b c)
h =array.reduce({}) do |hash, element|
  hash.update(element => true)
end

puts h
