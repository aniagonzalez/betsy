class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    @user ||= User.find_by(id: session[:user_id])
  end

  def index
    redirect_to products_path
  end

  # def logged_in?
  #   current_user != nil
  # end

end