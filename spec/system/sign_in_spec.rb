# rubocop : disable Layout/EndOfLine

require 'rails_helper'

RSpec.describe 'Login an existing user', type: :system do
  before :each do
    User.create(first_name: 'joseph')
  end

  it 'Log me in' do
    visit '/'
    click_link 'Click here to log in'
    sleep(5)

    expect(page).to have_content 'Welcome to the Login Page of Private Events app'

    element = find(:css, "input[id$='session_first_name']")
    element.fill_in with: 'joseph'

    click_button 'Login user'
    sleep(5)

    expect(page).to have_content 'Hello Joseph to show page'
  end
end

# rubocop : enable Layout/EndOfLine
