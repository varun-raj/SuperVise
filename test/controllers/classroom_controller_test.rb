require 'test_helper'

class ClassroomControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get mates" do
    get :mates
    assert_response :success
  end

end
