class AgentController < ApplicationController
  def index
    @customer = Customer.where(currently_assigned_to: logged_in_session_owning_user.id).where(is_complete: false)
  end
end
