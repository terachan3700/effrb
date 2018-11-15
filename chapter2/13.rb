class Version
  attr_reader(:major, :minor, :patch)

  def initialize(version)
    @major, @minor, @patch = version.split('.').each(&:to_i)
  end
end

vs = %w(1.0.0 1.11.1 1.9.0).map { |v| Version.new(v)}

# このsortでは比較できない。
vs.sort
