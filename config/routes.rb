Rails.application.routes.draw do
  root 'application#home'
  get 'contact_us', to: 'application#contact_us', as: 'contact_us'
  get 'health', to: 'application#health', as: 'health'
end
