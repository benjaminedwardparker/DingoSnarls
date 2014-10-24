require 'test_helper'

class ProfileControllerTest < ActionController::TestCase
  test "should get sign_in" do
    get :sign_in
    assert_response :success
  end

  test "should get sign_up" do
    get :sign_up
    assert_response :success
  end

  test "should get about_user" do
    get :about_user
    assert_response :success
  end

  test "should get about_others" do
    get :about_others
    assert_response :success
  end

end
