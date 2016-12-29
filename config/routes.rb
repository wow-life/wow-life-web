Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'application#home'
  get 'health', to: 'application#health', as: 'health'
  get 'hormony', to: 'application#hormony', as: 'hormony'
  get 'healing', to: 'application#healing', as: 'healing'
  get 'projects', to: 'application#projects', as: 'projects'
  get 'case', to: 'application#case1', as: 'case1'
  get 'case/1', to: 'application#case1', resource: 'case1'
  get 'case/1/1', to: 'application#case1_1', resource: 'case1_1'
  get 'case/1/2', to: 'application#case1_2', resource: 'case1_2'
  get 'case/2', to: 'application#case2', as: 'case2'
  get 'case/3', to: 'application#case3', as: 'case3'
  get 'case/4', to: 'application#case4', as: 'case4'
  get 'person', to: 'application#person', as: 'person'
  get 'contact_us', to: 'application#contact_us', as: 'contact_us'
end
