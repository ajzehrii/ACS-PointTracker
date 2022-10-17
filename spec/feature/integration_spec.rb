# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a email', type: :feature do
  scenario 'valid inputs' do
    visit new_email_path
    fill_in 'Address', with: 'test@gmail.com'
    click_on 'Subscribe'
    visit emails_path
    expect(page).to have_content('test@gmail.com')
  end
end
