class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home
    render :template => 'pages/home'
  end

  def health
    render :template => 'pages/health'
  end

  def hormony
    render :template => 'pages/hormony'
  end

  def healing
    render :template => 'pages/healing'
  end

  def projects
    render :template => 'pages/projects'
  end

  def case1
    render :template => 'pages/case1'
  end

  def case1_1
    render :template => 'pages/case1_1'
  end

  def case1_2
    render :template => 'pages/case1_2'
  end

  def case2
    render :template => 'pages/case2'
  end

  def case3
    render :template => 'pages/case3'
  end

  def case4
    render :template => 'pages/case4'
  end

  def person
    render :template => 'pages/person'
  end

  def contact_us
    render :template => 'pages/contact_us'
  end
end
