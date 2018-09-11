class LoginController < ApplicationController
  def new

  end

  def create
      if session.empty?
      @user=User.find_by_email(params[:user][:email])
      if @user.password === params[:user][:password]
        session[:user_id]=@user.id
        redirect_to "/home/index"
      else
        flash.now[:alert] = 'Error while sending message!'
      end
    else
      reset_session
      session.clear
      @user=User.find_by_email(params[:user][:email])
      if @user.password === params[:user][:password]
        session[:user_id]=@user.id
        redirect_to "/home/index"
      else
        flash.now[:alert] = 'Error while sending message!'
      end
    end

  end

  def logout
    session.delete(:user_id)
    redirect_to login_new_path ,notice: "Logged out!"
  end

end
