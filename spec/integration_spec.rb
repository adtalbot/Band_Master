ENV["RACK_ENV"] = "test"

require('spec_helper')
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('The path of the website', :type => :feature) do

  it('returns all existing bands') do
    visit('/')
    expect(page).to have_content('The Beetles')
  end
end