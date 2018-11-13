require 'csv'

class AnnualWeather
  def initialize(file_name)
    @readings = []

    CSV.foreach(file_name, headers: true) do |row|
      @readings << {
        data: Date.parse(row[2]),
        high: row[10].to_f,
        low: row[11].to_f
      }

    end
  end

  def readings
    @readings
  end
end

an = AnnualWeather.new("../data/weather.csv")

puts an.readings