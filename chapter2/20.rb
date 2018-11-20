def frequency (array)
  array.reduce({}) do |hash, element|
    hash[element] ||= 0
    hash[element] += 1
    hash
  end
end

a = %w(a b c)

puts frequency a