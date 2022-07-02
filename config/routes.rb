Rails.application.routes.draw do
  get 'search', to: "search#index"
  root to: 'pages#homepage'

  devise_for :users
  get '/pages', to: 'pages#dashboard', as: :dashboard
  get '/pages/my_bookings', to: 'pages#my_bookings', as: :my_bookings
  get '/pages/my_activities', to: 'pages#my_activities', as: :my_activities
  resources :activities, only: [:index, :new, :show, :create, :edit, :update, :destroy] do

    resources :bookings, only: [:index, :show, :new, :create, :destroy, :edit, :update]
  end
  resources :bookings, only: [:index] do
    member do
      patch :accept
      patch :decline
    end

  end
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
