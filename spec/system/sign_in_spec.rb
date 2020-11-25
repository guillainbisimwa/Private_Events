require 'rails_helper'

RSpec.describe 'Some process with capybara framework', type: :system do

  describe 'Events' do
    it 'Go to the events page' do
      visit events_path
      expect(page).to have_content('Index Events')
    end

    it 'Go to the wrong page' do
      visit events_path
      expect(page).to_not have_content('Index vents')
    end
  end

  before :each do
    User.create(first_name: 'joseph')
  end
  # subject { 
  #   User.create(first_name: 'joseph')
  # }

  it "sign me in" do
    visit '/'
    click_link 'Click here to log in'
    sleep(5)
    
    expect(page).to have_content 'Welcome to the Login Page of Private Events app'

    element = find(:css, "input[id$='session_first_name']")
    element.fill_in with: "joseph"

    click_button 'Login user'
    sleep(5)

    expect(page).to have_content 'Hello joseph to show page'
  end
end