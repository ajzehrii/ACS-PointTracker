require "application_system_test_case"

class MemberMeetingsTest < ApplicationSystemTestCase
  setup do
    @member_meeting = member_meetings(:one)
  end

  test "visiting the index" do
    visit member_meetings_url
    assert_selector "h1", text: "Member Meetings"
  end

  test "creating a Member meeting" do
    visit member_meetings_url
    click_on "New Member Meeting"

    fill_in "Meeting", with: @member_meeting.meeting_id
    fill_in "Member", with: @member_meeting.member_id
    click_on "Create Member meeting"

    assert_text "Member meeting was successfully created"
    click_on "Back"
  end

  test "updating a Member meeting" do
    visit member_meetings_url
    click_on "Edit", match: :first

    fill_in "Meeting", with: @member_meeting.meeting_id
    fill_in "Member", with: @member_meeting.member_id
    click_on "Update Member meeting"

    assert_text "Member meeting was successfully updated"
    click_on "Back"
  end

  test "destroying a Member meeting" do
    visit member_meetings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Member meeting was successfully destroyed"
  end
end
