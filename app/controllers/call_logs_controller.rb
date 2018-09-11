class CallLogsController < ApplicationController

  def new
    @call_log = CallLog.new
    @call_log.call_id = params[:call_id]
    @call_log.user_id = params[:user_id]
    @call_log.customer_id = params[:customer_id]
  end

  def create
    user = CallLog.new(call_log_params)
    if user.save
      redirect_to '/'
    end
  end

  private def call_log_params
    params.require(:call_log).permit(:call_id, :user_id, :customer_id, :status, :remarks, :description, :reason)
  end

end
