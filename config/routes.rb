Rails.application.routes.draw do
  get 'pages/home'
  devise_for :users
  root to: 'services#index'

  resources :services do
    resources :bookings, only: [:new, :create, :show]
  end

  resources :reviews, only: [:new, :create]

  get 'dashboard', to: 'dashboard#profile', as: :dashboard
  patch 'update_user', to: 'dashboard#update', as: :update_settings
end
