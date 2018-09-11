require 'test_helper'

class SupervisorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get supervisor_index_url
    assert_response :success
  end

end
