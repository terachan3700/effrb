class Tuner
  def initialize(presets)
    @presets = presets
    clean
  end

  private

  def clean
    @presets.reject { |f| f[-1].to_i.even? }
  end
end

presets = %w(90.1 106.2 88.5)

puts presets

# 参照渡しなので、presetsの値が消えてしまう。
tuner = Tuner.new(presets)

puts tuner

puts presets
