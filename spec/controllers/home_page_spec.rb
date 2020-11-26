# rubocop : disable Layout/EndOfLine

require 'rails_helper'

RSpec.describe 'Get to Home Page', type: :feature do
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
end

# rubocop : enable Layout/EndOfLine
