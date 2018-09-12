class CallLogsController < ApplicationController
@@c
@@u
  def index
    @call_log = CallLog.all
  end

  def new
    @call_log = CallLog.new
    @call_log.call_id = params[:call_id]
    @call_log.user_id = logged_in_session_owning_user.id
    @call_log.customer_id = params[:customer_id]
    @@c=Customer.find_by_id(params[:customer_id])
    @@u=logged_in_session_owning_user

  end

  def create
    user = CallLog.new(call_log_params)

    if user.save

      if user.status==="Success"
        @@c.is_complete=TRUE
        @@c.save
      end

      while Customer.where(currently_assigned_to: @@u.id, is_complete: false).count <6 and Customer.where(currently_assigned_to: nil).count>0
        c=Customer.find_by_currently_assigned_to(nil)
        c.currently_assigned_to=@@u.id
        c.save
      end

      redirect_to '/'
    end
  end

  private def call_log_params
    params.require(:call_log).permit(:call_id, :user_id, :customer_id, :status, :remarks, :description, :reason)
  end

end
