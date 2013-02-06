require 'test_helper'

class TrainingControllerTest < ActionController::TestCase
  test "should get stimulus" do
    get :stimulus
    assert_response :success
  end

end
