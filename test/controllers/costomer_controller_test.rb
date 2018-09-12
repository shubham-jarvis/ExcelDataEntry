require 'test_helper'

class CostomerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get costomer_index_url
    assert_response :success
  end

  test "should get import" do
    get costomer_import_url
    assert_response :success
  end

end
