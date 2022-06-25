Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :activities, only: [:index, :new, :show, :create] do
    resources :bookings, only: [:new, :create, :destroy] do
      patch :accept
      patch :decline
    end
  end
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
