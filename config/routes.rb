Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :events, only: [:index, :show, :create] do
    resources :lists, only: [:create]
  end


  resources :lists, only: [] do
    resources :ideas, only: [:create]
  end

  resources :ideas, only: [:update, :show]

  # TEMPORARY URLS

  resources :lists, only: [] do
    resources :ideas, only: [:new]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
