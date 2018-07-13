class ApplicationController < ActionController::Base
#protect_from_forgery with: :null_session
  helper_method :current_user


  def current_user
    return nil if session[:session_token].nil?
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def log_in_user!(user)
    @current_user = user
    session[:session_token] = user.session_token
  end

  def logged_in?
    !!current_user
  end

  def logout!
    current_user.reset_session_token!
    session[:session_token]=nil
  end

  def destroy
    logout!
    redirect_to new_sessions_url
  end

  def require_current_user!
    redirect_to new_sessions_url if current_user.nil?
  end

end
