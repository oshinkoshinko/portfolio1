Rails.application.routes.draw do
  devise_for :users

  root to: 'nows#index'
  get 'homes/about'

  resources :nows, only: [:new, :create, :index, :show, :edit, :destroy]
  resources :users, only: [:index, :create, :show, :edit, :update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
