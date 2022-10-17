require "test_helper"

class MemberMeetingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member_meeting = member_meetings(:one)
  end

  test "should get index" do
    get member_meetings_url
    assert_response :success
  end

  test "should get new" do
    get new_member_meeting_url
    assert_response :success
  end

  test "should create member_meeting" do
    assert_difference('MemberMeeting.count') do
      post member_meetings_url, params: { member_meeting: { meeting_id: @member_meeting.meeting_id, member_id: @member_meeting.member_id } }
    end

    assert_redirected_to member_meeting_url(MemberMeeting.last)
  end

  test "should show member_meeting" do
    get member_meeting_url(@member_meeting)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_meeting_url(@member_meeting)
    assert_response :success
  end

  test "should update member_meeting" do
    patch member_meeting_url(@member_meeting), params: { member_meeting: { meeting_id: @member_meeting.meeting_id, member_id: @member_meeting.member_id } }
    assert_redirected_to member_meeting_url(@member_meeting)
  end

  test "should destroy member_meeting" do
    assert_difference('MemberMeeting.count', -1) do
      delete member_meeting_url(@member_meeting)
    end

    assert_redirected_to member_meetings_url
  end
end
