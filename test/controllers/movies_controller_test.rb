require 'test_helper'

class MoviesControllerTest < ActionController::TestCase
  test "should get choices" do
    get :choices
    assert_response :success
  end

end
