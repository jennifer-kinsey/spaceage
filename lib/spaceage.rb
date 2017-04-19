class Spaceage

  PLANETS = {
    "mercury" => 0.2408467,
    "venus" => 0.61519726,
    "earth" => 1.000,
    "mars" => 1.8808158,
    "jupiter" => 11.862615,
    "saturn" => 29.447498,
    "uranus" => 84.016846,
    "neptune" => 164.79132,
    "pluto" => 247.67967,
  }

  EARTHSECSINYEAR =  31557600

  def initialize
    @current_time = Time.now.to_i
  end

  def get_date_in_seconds(date)
    date.to_i.to_f
  end

  def get_age_in_years(date)
    unless date == 0 || date == nil || date == ""
      ( @current_time - get_date_in_seconds(date) ) / EARTHSECSINYEAR
    else
      return
    end
  end

  def get_planet_years(planet, age_in_years)
    (age_in_years / PLANETS.fetch(planet)).round(3)
  end

end
