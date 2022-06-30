Rails.application.routes.draw do
  get 'search', to:"search#index"
  root to: 'pages#homepage'
  devise_for :users
  resources :pages, to: 'pages#dashboard'
  # get :bookings, to: 'bookings#index', as: my_bookings
  resources :activities, only: [:index, :new, :show, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:show, :new, :create, :destroy, :edit, :update]
  end
  resources :bookings, only: [:index] do
    member do
      patch :accept
      patch :decline
    end

  end
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
