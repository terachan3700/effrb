class Version
  # <=>を定義したらComparableを定義する。
  include(Comparable)

  attr_reader(:major, :minor, :patch)

  def initialize(version)
    @major, @minor, @patch = version.split('.').each(&:to_i)
  end

  def <=> (other)
    return nil unless other.is_a?(Version)

    [major <=> other.major,
     minor <=> other.minor,
     patch <=> other.patch
    ].detect { |n| !n.zero? } || 0
  end
end


puts a = Version.new('2.1.1')
puts b = Version.new('2.10.3')
# Comparableを定義するとオブジェクトで比較演算子を使えるようになる。K
puts a > b
puts a >= b
puts a < b
puts a <= b
puts a == b


vs = %w(1.0.0 1.11.1 1.9.0).map { |v| Version.new(v) }

puts vs.sort
