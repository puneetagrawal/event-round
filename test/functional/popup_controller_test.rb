require 'test_helper'

class PopupControllerTest < ActionController::TestCase
  test "should get events_around_me" do
    get :events_around_me
    assert_response :success
  end

  test "should get homepage" do
    get :homepage
    assert_response :success
  end

  test "should get signup" do
    get :signup
    assert_response :success
  end

end
