Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :events, only: [:index, :show, :create, :new] do
    resources :lists, only: [:create]
  end

  resources :lists, only: [] do
    resources :ideas, only: [:new, :create]
  end

  resources :ideas, only: [:update, :show]
end
