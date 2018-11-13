require 'csv'

class AnnualWeather

  #観測データを保持する新しいStructを作る
  Reading = Struct.new(:date, :high, :low)

  def initialize(file_name)
    @readings = []

    CSV.foreach(file_name, headers: true) do |row|
      @readings << Reading.new(
        Date.parse(row[2]),
        row[10].to_f,
        row[11].to_f
      )
    end
  end

  def readings
    @readings
  end

  def mean
    return 0.0 if @readings.size.zero?

    total = @readings.reduce(0.0) do |sum, reading|
      sum + (reading.high + reading.low) / 2.0
    end

    total / @readings.size.to_f
  end
end

an = AnnualWeather.new("../data/weather.csv")

puts an.readings
puts an.mean