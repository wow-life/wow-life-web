class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home
    render :template => 'pages/home.html.erb'

  end

  def contact_us
    render :template => 'pages/contact_us.html.erb'
  end
end
