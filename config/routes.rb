Rails.application.routes.draw do
  get 'dashboards/index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :jungles do
    resources :jungleplants, only:[:new, :create]
    # do
      # resources :plants, only:[:show, :index]
    # end
  end

  # plants routes they exists indipendently
  # we only nest routes when we want to pass prior elements to the url in order to access that instance
  # nested routes they do not set the relationship in the db between models but it's actually the SCHEMA job
  resources :plants, only:[:show, :index]

  resources :bookings, only:[:new, :create, :show, :index, :destroy]
  resources :dashboards, only:[:index] do
    resources :chatrooms, only: :create
  end

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

  resources :chatrooms, only: [:show, :index] do
    resources :messages, only: :create
  end
end
