Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :activities, only: [:index, :new, :show, :create, :edit, :update] do
    resources :bookings, only: [:show, :new, :create, :destroy, :edit, :update]
  end
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
