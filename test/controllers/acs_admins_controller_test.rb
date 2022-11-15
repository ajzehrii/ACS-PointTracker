# frozen_string_literal: true

require 'test_helper'

class AcsAdminsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acs_admin = acs_admins(:one)
  end

  test 'should get index' do
    get acs_admins_url
    assert_response :success
  end

  test 'should get new' do
    get new_acs_admin_url
    assert_response :success
  end

  test 'should create acs_admin' do
    assert_difference('AcsAdmin.count') do
      post acs_admins_url,
           params: { acs_admin: { admin_ID: @acs_admin.admin_ID, password: @acs_admin.password, position: @acs_admin.position,
                                  student_ID: @acs_admin.student_ID, username: @acs_admin.username } }
    end

    assert_redirected_to acs_admin_url(AcsAdmin.last)
  end

  test 'should show acs_admin' do
    get acs_admin_url(@acs_admin)
    assert_response :success
  end

  test 'should get edit' do
    get edit_acs_admin_url(@acs_admin)
    assert_response :success
  end

  test 'should update acs_admin' do
    patch acs_admin_url(@acs_admin),
          params: { acs_admin: { admin_ID: @acs_admin.admin_ID, password: @acs_admin.password, position: @acs_admin.position,
                                 student_ID: @acs_admin.student_ID, username: @acs_admin.username } }
    assert_redirected_to acs_admin_url(@acs_admin)
  end

  test 'should destroy acs_admin' do
    assert_difference('AcsAdmin.count', -1) do
      delete acs_admin_url(@acs_admin)
    end

    assert_redirected_to acs_admins_url
  end
end
