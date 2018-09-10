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
    user = User.find(params[:id])
    # try do
    base_uri = Uri.parse("https://kpi.knowlarity.com/")
    http = Net::HTTP.new(base_uri.host, base_uri.port)
    request = Net::HTTP::Post.new(uri.request_uri)
    request.initialize_http_header(:headers => {'Content-Type' => 'application/json',
                                                'accept' => 'application/json',
                                                'authorization' => 'a4fc9ffd-f32a-4225-a358-8246ab9fb8da',
                                                'x-api=key' => 'x46Q8Td7D67Pd7ePSjCXu9UnZYeDk1la9uCulUmU'})
    request.set_form_data({"k_number" => "+912248770336", "agent_number" => "+918010481221", "customer_number" => "+91" + user.mobile})

    @dataresult = http.request(request)
      # self.class.pem(File.read("#{File.expand_path('.')}/app/assets/k.pem"))
      # @dataresult = self.class.post('Basic/v1/account/call/makecall',
      #                               :body => {:k_number => '+912248770336',
      #                                         :agent_number => '+918010481221',
      #                                         :customer_number => '+91' + user.mobile
      #                               }.to_json,
      #                               :headers => {'Content-Type' => 'application/json',
      #                                            'accept' => 'application/json',
      #                                            'authorization' => 'a4fc9ffd-f32a-4225-a358-8246ab9fb8da',
      #                                            'x-api=key' => 'x46Q8Td7D67Pd7ePSjCXu9UnZYeDk1la9uCulUmU'})
    # end
    # catch(exception: Exception) do
    # @result = exception
    # end
    # render json: @result.as_json
    # render json: {message: 'message', data: result, httpscode: 200}
  end

  private def user_params
    params.require(:user).permit(:name, :email, :mobile, :role_id)
  end

end

