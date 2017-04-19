require "spaceage"
require "rspec"
require "pry"

describe("Spaceage#get_date_in_seconds") do
  let(:spaceage) {Spaceage.new}
  it("returns the correct number of seconds from the DOB given to epoch") do
    expect(spaceage.get_date_in_seconds(Time.new(2000, 1, 1))).to(eq(946713600))
  end
end


describe("Spaceage#get_age_in_years") do
  let(:spaceage) {Spaceage.new}
  it("returns the correct age for the individual in years") do
    expect(spaceage.get_age_in_years(Time.new(1997, 1, 1))).to be_truthy
  end
  it("returns the correct age for the individual in years") do
    expect(spaceage.get_age_in_years(Time.new(1997, 1, 1))).to be_between(0, 100).exclusive
  end
end


describe("Spaceage#get_planet_years") do
  let(:spaceage) {Spaceage.new}
  it("returns the correct years old in Earth years") do
    expect(spaceage.get_planet_years("earth", 29)).to(eq(29))
  end
  it("returns the correct years old in Mercury years") do
    expect(spaceage.get_planet_years("mercury", 29)).to(eq(120.41))
  end
  it("returns the correct years old in Venus years") do
    expect(spaceage.get_planet_years("venus", 32)).to(eq(52.02))
  end
  it("returns the correct years old in Mars years") do
    expect(spaceage.get_planet_years("mars", 18.38479387)).to(eq(9.77))
  end
  it("returns the correct years old in Jupiter years") do
    expect(spaceage.get_planet_years("jupiter", 0.00001)).to(eq(0))
  end
  it("returns the correct years old in Saturn years") do
    expect(spaceage.get_planet_years("saturn", 45)).to(eq(1.53))
  end
  it("returns the correct years old in Uranus years") do
    expect(spaceage.get_planet_years("uranus", 12)).to(eq(0.14))
  end
  it("returns the correct years old in Neptune years") do
    expect(spaceage.get_planet_years("neptune", 27)).to(eq(0.16))
  end
  it("returns the correct years old in Pluto years") do
    expect(spaceage.get_planet_years("pluto", 38)).to(eq(0.15))
  end
end
