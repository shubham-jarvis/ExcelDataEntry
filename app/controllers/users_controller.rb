class UsersController < ApplicationController

  include HTTParty

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      redirect_to '/'
    end
  end

  def makecall
    user = Customer.find(params[:id])
    puts "Calling from" + logged_in_session_owning_user.mobile + " to " + " user.Mobile_No.to_i.to_s"
    @dataresult = HTTParty.post('https://kpi.knowlarity.com/Basic/v1/account/call/makecall/',
                                verify: false,
                                body: {k_number: '+912230147776',
                                       caller_id: '+912248770336',
                                       agent_number: '+91' + logged_in_session_owning_user.mobile,
                                       customer_number: '+91' + (user.Mobile_No.to_i).to_s,
                                       description: 'This is the description for the problem'}.to_json,
                                headers: {'Content-Type': 'application/json',
                                          'authorization': 'a4fc9ffd-f32a-4225-a358-8246ab9fb8da',
                                          'channel': 'Basic',
                                          'x-api-key': 'x46Q8Td7D67Pd7ePSjCXu9UnZYeDk1la9uCulUmU'})
    render json: @dataresult.as_json
  end

  private def user_params
    params.require(:user).permit(:name, :email, :mobile, :password, :role_id)
  end
end


