require 'test_helper'

class AttendanceListControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get creat" do
    get :creat
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
