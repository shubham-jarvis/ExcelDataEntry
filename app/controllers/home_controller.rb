class HomeController < ApplicationController
  before_action :logged_in?
  def index
    if logged_in_session_owning_user.role_id == "1"
      path= supervisor_index_path
    elsif logged_in_session_owning_user.role_id == "2"
      path= team_lead_index_path
    elsif logged_in_session_owning_user.role_id == "3"
      path= agent_index_path
    end
      redirect_to path
  end
end
