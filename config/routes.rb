Rails.application.routes.draw do
  get 'search/search'
  devise_for :users

  root to: 'homes#top'
  get 'homes/about'

  resources :nows, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :replies, only: [:create, :destroy, :show, :edit, :update]
  end
  resources :users, only: [:index, :create, :show, :edit, :update, :destroy] do
    resource :relationships, only: [:create, :destroy]
    get 'follow' => 'relationships#follow'
    get 'unfollow' => 'relationships#unfollow'
  end

  get '/search' => 'search#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
