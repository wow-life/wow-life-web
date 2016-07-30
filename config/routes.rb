Rails.application.routes.draw do
  root 'application#home'
  get 'contact_us', to: 'application#contact_us', as: 'contact_us'
  get 'health', to: 'application#health', as: 'health'
  get 'hormony', to: 'application#hormony', as: 'hormony'
  get 'healing', to: 'application#healing', as: 'healing'
  get 'projects', to: 'application#projects', as: 'projects'
end
