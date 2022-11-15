# frozen_string_literal: true

require 'test_helper'

class CalendareventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calendarevent = calendarevents(:one)
  end

  test 'should get index' do
    get calendarevents_url
    assert_response :success
  end

  test 'should get new' do
    get new_calendarevent_url
    assert_response :success
  end

  test 'should create calendarevent' do
    assert_difference('Calendarevent.count') do
      post calendarevents_url,
           params: { calendarevent: { description: @calendarevent.description, end_time: @calendarevent.end_time,
                                      name: @calendarevent.name, start_time: @calendarevent.start_time } }
    end

    assert_redirected_to calendarevent_url(Calendarevent.last)
  end

  test 'should show calendarevent' do
    get calendarevent_url(@calendarevent)
    assert_response :success
  end

  test 'should get edit' do
    get edit_calendarevent_url(@calendarevent)
    assert_response :success
  end

  test 'should update calendarevent' do
    patch calendarevent_url(@calendarevent),
          params: { calendarevent: { description: @calendarevent.description, end_time: @calendarevent.end_time,
                                     name: @calendarevent.name, start_time: @calendarevent.start_time } }
    assert_redirected_to calendarevent_url(@calendarevent)
  end

  test 'should destroy calendarevent' do
    assert_difference('Calendarevent.count', -1) do
      delete calendarevent_url(@calendarevent)
    end

    assert_redirected_to calendarevents_url
  end
end
