class CallLogsController < ApplicationController

  def index
    @call_log = CallLog.all
  end

  def new
    @call_log = CallLog.new
    @call_log.call_id = params[:call_id]
    @call_log.user_id = logged_in_session_owning_user.id
    @call_log.customer_id = params[:customer_id]
    @@temp = params[:customer_id]
  end

  def create
    user = CallLog.new(call_log_params)

    if user.status == "success"
      c = Customer.find_by_id(@@temp)
      c.is_complete = true
      c.save
      Customer.where(currently_assigned_to: nil, is_complete: false).each do |c|
        User.where(name: logged_in_session_owning_user.name).find_each do |i|
          if Customer.where(currently_assigned_to: i.name, is_complete: false).count <= 5
            puts i.name
            puts Customer.where(currently_assigned_to: i.name).count
            c.currently_assigned_to = i.name
            c.save
          end
        end
      end
    end

    if user.save
      redirect_to '/'
    end

  end

  private def call_log_params
    params.require(:call_log).permit(:call_id, :user_id, :customer_id, :status, :remarks, :description, :reason)
  end
end
