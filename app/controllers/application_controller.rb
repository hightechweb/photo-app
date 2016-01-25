class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  before_action :authenticate_user!

  #helper_method :current_user, :logged_in?
  
#   def require_user
#     if current_user != @image.user
#       flash[:danger] = "You can view your own image collections!"
#       redirect_to root_path
#     end
#   end

end
