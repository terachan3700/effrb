class TemperatureError < StandardError
  attr_reader(:temperature)

  def initialize(temperature)
    @temperature = temperature
    super("invalid temperature: #@temperature")
  end
end

raise(TemperatureError.new(180))