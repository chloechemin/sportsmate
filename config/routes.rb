Rails.application.routes.draw do
  get 'search', to: "search#index"
  get 'pages', to: "pages#dashboard"
  root to: 'pages#landing'
  devise_for :users
  resources :pages, to: 'pages#dashboard'
  resources :activities, only: [:index, :new, :show, :create, :edit, :update, :destroy] do

    resources :bookings, only: [:show, :new, :create, :destroy, :edit, :update]
  end
  resources :bookings, only: [] do
    member do
      patch :accept
      patch :decline
    end

  end
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
