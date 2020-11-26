# rubocop : disable Layout/EndOfLine

require 'rails_helper'

RSpec.describe 'A log in user creates an event', type: :system do
  before :each do
    User.create(first_name: 'joseph')
  end

  it 'Should create a new event for a log in user' do
    visit '/'
    click_link 'Click here to log in'
    sleep(2)

    expect(page).to have_content 'Welcome to the Login Page of Private Events app'

    element = find(:css, "input[id$='session_first_name']")
    element.fill_in with: 'joseph'

    click_button 'Login user'
    sleep(2)

    visit 'events/new'
    sleep(5)

    expect(page).to have_content 'Description of your new Event!'

    element = find(:css, "textarea[id$='event_description']")
    element.fill_in with: 'Testing the creation of a new event through a system test with capybara'

    click_button 'Create an event'
    sleep(5)

    expect(page).to have_content 'Index Events'
  end
end

# rubocop : enable Layout/EndOfLine
