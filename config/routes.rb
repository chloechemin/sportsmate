Rails.application.routes.draw do
  get 'search', to:"search#index"
  root to: 'activities#index'
  devise_for :users
  resources :pages, to: 'pages#dashboard'
  resources :activities, only: [:index, :new, :show, :create, :edit, :update] do
    resources :bookings, only: [:new, :create, :destroy]
  end
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
