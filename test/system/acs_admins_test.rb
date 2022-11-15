# frozen_string_literal: true

require 'application_system_test_case'

class AcsAdminsTest < ApplicationSystemTestCase
  setup do
    @acs_admin = acs_admins(:one)
  end

  test 'visiting the index' do
    visit acs_admins_url
    assert_selector 'h1', text: 'Acs Admins'
  end

  test 'creating a Acs admin' do
    visit acs_admins_url
    click_on 'New Acs Admin'

    fill_in 'Admin id', with: @acs_admin.admin_ID
    fill_in 'Password', with: @acs_admin.password
    fill_in 'Position', with: @acs_admin.position
    fill_in 'Student id', with: @acs_admin.student_ID
    fill_in 'Username', with: @acs_admin.username
    click_on 'Create Acs admin'

    assert_text 'Acs admin was successfully created'
    click_on 'Back'
  end

  test 'updating a Acs admin' do
    visit acs_admins_url
    click_on 'Edit', match: :first

    fill_in 'Admin id', with: @acs_admin.admin_ID
    fill_in 'Password', with: @acs_admin.password
    fill_in 'Position', with: @acs_admin.position
    fill_in 'Student id', with: @acs_admin.student_ID
    fill_in 'Username', with: @acs_admin.username
    click_on 'Update Acs admin'

    assert_text 'Acs admin was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Acs admin' do
    visit acs_admins_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Acs admin was successfully destroyed'
  end
end
