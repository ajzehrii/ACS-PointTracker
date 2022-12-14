require 'application_system_test_case'

class DuesTest < ApplicationSystemTestCase
  setup do
    @due = dues(:one)
  end

  test 'visiting the index' do
    visit dues_url
    assert_selector 'h1', text: 'Dues'
  end

  test 'creating a Due' do
    visit dues_url
    click_on 'New Due'

    fill_in 'Ammount', with: @due.ammount
    check 'Paid' if @due.paid
    fill_in 'Semester id', with: @due.semester_ID
    fill_in 'Student id', with: @due.student_ID
    click_on 'Create Due'

    assert_text 'Due was successfully created'
    click_on 'Back'
  end

  test 'updating a Due' do
    visit dues_url
    click_on 'Edit', match: :first

    fill_in 'Ammount', with: @due.ammount
    check 'Paid' if @due.paid
    fill_in 'Semester id', with: @due.semester_ID
    fill_in 'Student id', with: @due.student_ID
    click_on 'Update Due'

    assert_text 'Due was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Due' do
    visit dues_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Due was successfully destroyed'
  end
end
