require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('return the list of places',{:type => :feature}) do
  it("returns 'Auckland, New Zealand' for the list of places") do
    visit('/')
    fill_in('place', :with => "Auckland, New Zealand")
    click_button('Add Place')
    expect(page).to have_content('successfully')
  end
end

describe('hitting the back button',{:type => :feature}) do
  it('returns the main page with a list of places') do
    visit('/')
    fill_in('place', :with => "Manilla, Phillipines")
    click_button('Add Place')
    expect(page).to have_content('successfully')
    click_link('Back')
    expect(page).to have_content('Manilla, Phillipines')
  end
end
