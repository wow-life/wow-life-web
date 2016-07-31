class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home
    render :template => 'pages/home.html.erb'

  end

  def health
    render :template => 'pages/health.html.erb'
  end

  def hormony
    render :template => 'pages/hormony.html.erb'
  end

  def healing
    render :template => 'pages/healing.html.erb'
  end

  def projects
    render :template => 'pages/projects.html.erb'
  end

  def case1
    render :template => 'pages/case1.html.erb'
  end

  def case1_1
    render :template => 'pages/case1_1.html.erb'
  end

  def case1_2
    render :template => 'pages/case1_2.html.erb'
  end

  def case2
    render :template => 'pages/case2.html.erb'
  end

  def case3
    render :template => 'pages/case3.html.erb'
  end

  def case4
    render :template => 'pages/case4.html.erb'
  end

  def person
    render :template => 'pages/person.html.erb'
  end

  def contact_us
    render :template => 'pages/contact_us.html.erb'
  end
end
