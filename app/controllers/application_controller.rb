class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
end

def logged_in?
  redirect_to users_index_path , flash: {danger: 'You must be logged in to access this page.'} if logged_in_session_owning_user.nil?
end

def logged_in_session_owning_user
  User.find_by_id(session[:user_id]) if session[:user_id]
end

def current_user_role_is?
  Role.find_by_id(User.find_by_id(session[:user_id]).role_id).title if session[:user_id]
end