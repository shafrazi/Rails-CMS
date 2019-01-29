Rails.application.routes.draw do
  get 'pages/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "home#show"

  resources :pages, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
