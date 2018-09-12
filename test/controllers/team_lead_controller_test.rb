require 'test_helper'

class TeamLeadControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get team_lead_index_url
    assert_response :success
  end

end
