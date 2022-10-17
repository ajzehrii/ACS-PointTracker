require 'application_system_test_case'

class CalendareventsTest < ApplicationSystemTestCase
  setup do
    @calendarevent = calendarevents(:one)
  end

  test 'visiting the index' do
    visit calendarevents_url
    assert_selector 'h1', text: 'Calendarevents'
  end

  test 'creating a Calendarevent' do
    visit calendarevents_url
    click_on 'New Calendarevent'

    fill_in 'Description', with: @calendarevent.description
    fill_in 'End time', with: @calendarevent.end_time
    fill_in 'Name', with: @calendarevent.name
    fill_in 'Start time', with: @calendarevent.start_time
    click_on 'Create Calendarevent'

    assert_text 'Calendarevent was successfully created'
    click_on 'Back'
  end

  test 'updating a Calendarevent' do
    visit calendarevents_url
    click_on 'Edit', match: :first

    fill_in 'Description', with: @calendarevent.description
    fill_in 'End time', with: @calendarevent.end_time
    fill_in 'Name', with: @calendarevent.name
    fill_in 'Start time', with: @calendarevent.start_time
    click_on 'Update Calendarevent'

    assert_text 'Calendarevent was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Calendarevent' do
    visit calendarevents_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Calendarevent was successfully destroyed'
  end
end
