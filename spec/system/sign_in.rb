require 'rails_helper'

RSpec.describe 'Welcome to Private Events app', type: :system do
  describe 'Home Page' do
    it 'Shows the right content' do
      visit root_path
      expect(page).to have_content('Home Page')
    end

    it 'Shows the wrong content' do
      visit root_path
      expect(page).to_not have_content('Home age')
    end
  end

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

  describe "the go the process", type: :system do
 
    # before :example do
    #   User.create(first_name: 'joseph')
    # end
    subject { 
      User.create(first_name: 'joseph')
      Event.create(description: 'My event')
      
     }


    it "signs me in" do
      visit '/'
      click_link 'Click here to log in'
      sleep(5)
      expect(page).to have_content 'Welcome to the Login Page of Private Events app'

      element = find(:css, "input[id$='session_first_name']")
      element.fill_in with: "joseph"

      click_button 'Login user'
      sleep(5)
      subject

      expect(page).to have_content 'Logged in successfully'

    end
  end
end