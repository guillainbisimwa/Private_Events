require 'rails_helper'

RSpec.describe 'GET to events_path', type: :feature do
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
end
