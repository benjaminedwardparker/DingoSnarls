require 'test_helper'

class TimelineControllerTest < ActionController::TestCase
  test "should get list_all" do
    get :list_all
    assert_response :success
  end

  test "should get list_friends" do
    get :list_friends
    assert_response :success
  end

end
