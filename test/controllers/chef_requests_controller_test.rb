require 'test_helper'

class ChefRequestsControllerTest < ActionController::TestCase
  test "should get mew" do
    get :mew
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

end
