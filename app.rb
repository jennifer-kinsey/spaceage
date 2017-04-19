require "sinatra"
require "sinatra/reloader"
require "./lib/spaceage"
also_reload "lib/**/*.rb"
require "pry"

get "/" do
  erb(:index)
end

get "/age" do

  day = params.fetch("day")
  month = params.fetch("month")
  year = params.fetch("year")

  birthday = Time.new(year, month, day)

  spaceage = Spaceage.new

  @mercury_age = spaceage.get_planet_years("mercury", spaceage.get_age_in_years(birthday))

  @venus_age = spaceage.get_planet_years("venus", spaceage.get_age_in_years(birthday))

  @earth_age = spaceage.get_planet_years("earth", spaceage.get_age_in_years(birthday))

  @mars_age = spaceage.get_planet_years("mars", spaceage.get_age_in_years(birthday))

  @jupiter_age = spaceage.get_planet_years("jupiter", spaceage.get_age_in_years(birthday))

  @saturn_age = spaceage.get_planet_years("saturn", spaceage.get_age_in_years(birthday))

  @uranus_age = spaceage.get_planet_years("uranus", spaceage.get_age_in_years(birthday))

  @neptune_age = spaceage.get_planet_years("neptune", spaceage.get_age_in_years(birthday))

  @pluto_age = spaceage.get_planet_years("pluto", spaceage.get_age_in_years(birthday))

  erb(:age)
end
