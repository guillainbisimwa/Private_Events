require 'rails_helper'

RSpec.describe 'Registration of a new user', type: :system do
  it 'Register a new' do
    visit '/'
    click_link 'Click here to sign up'
    sleep(5)

    expect(page).to have_content 'Welcome to the Registration Page of Private Events app'

    element = find(:css, "input[id$='user_first_name']")
    element.fill_in with: 'Guillain'

    click_button 'Create new user'
    sleep(5)

    expect(page).to have_content 'Hello Guillain to show page'
  end
end
