class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    # only one user in db - skip login
    @current_user = User.first
  end
end
