require 'csv'

class AnnualWeather
  def initialize(file_name)
    @readings = []

    CSV.foreach(file_name, headers: true) do |row|
      @readings << {
        date: Date.parse(row[2]),
        high: row[10].to_f,
        low: row[11].to_f
      }
    end
  end

  def readings
    @readings
  end

  def mean
    return 0.0 if @readings.size.zero?

    total = @readings.reduce(0.0) do |sum, reading|
      sum + (reading[:high] + reading[:low]) / 2.0
    end

    total / @readings.size.to_f
  end
end

an = AnnualWeather.new("../data/weather.csv")

puts an.readings
puts an.mean