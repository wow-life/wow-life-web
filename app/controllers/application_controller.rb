class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home
    render pages_home_path
  end
end
