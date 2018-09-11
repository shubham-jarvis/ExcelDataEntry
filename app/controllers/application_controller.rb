class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_headers

  def set_headers
    if request.headers["HTTP_ORIGIN"]
      # better way check origin
      # if request.headers["HTTP_ORIGIN"] && /^https?:\/\/(.*)\.some\.site\.com$/i.match(request.headers["HTTP_ORIGIN"])
      headers['Access-Control-Allow-Origin'] = request.headers["HTTP_ORIGIN"]
      headers['Access-Control-Expose-Headers'] = 'ETag'
      headers['Access-Control-Allow-Methods'] = 'GET, POST, PATCH, PUT, DELETE, OPTIONS, HEAD'
      headers['Access-Control-Allow-Headers'] = '*,x-requested-with,Content-Type,If-Modified-Since,If-None-Match,Auth-User-Token'
      headers['Access-Control-Max-Age'] = '86400'
      headers['Access-Control-Allow-Credentials'] = 'true'
    end
  end
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