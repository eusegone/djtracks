require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get role:string" do
    get :role:string
    assert_response :success
  end

  test "should get name:string" do
    get :name:string
    assert_response :success
  end

end
