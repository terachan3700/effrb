def sum(enum)
  enum.reduce(0) do |accumulator, element|
    accumulator + element
  end
end

puts sum([0,20,24])