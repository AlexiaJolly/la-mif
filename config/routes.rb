Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :events, only: [:index, :show, :create] do
    resources :lists, only: [:create]
  end

  resources :lists, only: [:index, :new] do
    resources :ideas, only: [:new, :create]
  end

  resources :ideas, only: [:update, :show]
end
