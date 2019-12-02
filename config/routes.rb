Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :events, only: [:index, :show, :create, :new] do
    post 'invite_users', on: :member
    resources :lists, only: [:create]
  end

  resources :lists, only: [:index, :new, :show] do
    resources :ideas, only: [:new, :create]
  end

  resources :ideas, only: [:update, :show] do
    resources :comments, only: [:create]
  end
end
