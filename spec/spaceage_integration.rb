require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('displaying the age of the user in the years of all the planets', {:type => :feature}) do
  it('processes the user input number and returns their age on Mercury') do
    visit('/')
    select '1997', from: "year"
    select 'May', from: "month"
    select '5', from: "day"
    click_button('submit_button')
    expect(page).to have_content('mercury age is 78.888 years')
  end

  it('processes the user input number and returns their age on Pluto') do
    visit('/')
    select '2000', from: "year"
    select 'January', from: "month"
    select '1', from: "day"
    click_button('submit_button')
    expect(page).to have_content('if pluto was a planet (and had a liveable atmosphere) you would be 0.069 years old')
  end

  it('processes the user input number and returns their age on Earth') do
    visit('/')
    select '2000', from: "year"
    select 'January', from: "month"
    select '1', from: "day"
    click_button('submit_button')
    expect(page).to have_content('earth age is 17.0 years')
  end
end
