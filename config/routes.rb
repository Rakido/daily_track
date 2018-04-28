Rails.application.routes.draw do
  devise_for :users
  root to: 'tracks#index'

  resources :tracks, only: [:index, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
