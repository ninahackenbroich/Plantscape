Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :jungles do
    resources :jungleplants, only:[:show] do
    	resources :plants, only:[:show]
    end
  end

  resources :bookings, only:[:create, :new, :show, :index, :destroy]
end
