def frequency (array)
  array.reduce(Hash.new(0)) do |hash, element|
    hash[element] += 1
    hash
  end
end

a = %w(a b c)

puts frequency a