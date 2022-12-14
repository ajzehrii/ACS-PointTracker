require 'test_helper'

class DuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @due = dues(:one)
  end

  test 'should get index' do
    get dues_url
    assert_response :success
  end

  test 'should get new' do
    get new_due_url
    assert_response :success
  end

  test 'should create due' do
    assert_difference('Due.count') do
      post dues_url,
           params: { due: { ammount: @due.ammount, paid: @due.paid, semester_ID: @due.semester_ID,
                            student_ID: @due.student_ID } }
    end

    assert_redirected_to due_url(Due.last)
  end

  test 'should show due' do
    get due_url(@due)
    assert_response :success
  end

  test 'should get edit' do
    get edit_due_url(@due)
    assert_response :success
  end

  test 'should update due' do
    patch due_url(@due),
          params: { due: { ammount: @due.ammount, paid: @due.paid, semester_ID: @due.semester_ID,
                           student_ID: @due.student_ID } }
    assert_redirected_to due_url(@due)
  end

  test 'should destroy due' do
    assert_difference('Due.count', -1) do
      delete due_url(@due)
    end

    assert_redirected_to dues_url
  end
end
