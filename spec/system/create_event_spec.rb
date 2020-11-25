require 'rails_helper'

RSpec.describe 'A log in user creates an event', type: :system do

    visit 'events/new'
    sleep(5)
    
    expect(page).to have_content 'Description of your new Event!'

    element = find(:css, "textarea[id$='event_description']")
    element.fill_in with: "Testing the creation of a new event through a system test with capybara"

    click_button 'Create an event'
    sleep(5)

    expect(page).to have_content 'Index Events'
end