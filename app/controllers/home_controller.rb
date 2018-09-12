class HomeController < ApplicationController
  before_action :logged_in?
  def index
    path = login_new_path
    if Role.find(logged_in_session_owning_user.role_id).title == "Supervisor"
      path= supervisor_index_path
    elsif logged_in_session_owning_user.role_id == "2"
      path= team_lead_index_path
    elsif Role.find(logged_in_session_owning_user.role_id).title == "Agent"
      path= agent_index_path
    end
      redirect_to path
  end
end
