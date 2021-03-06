Rails.application.routes.draw do
  mount ActionCable.server => "/cable"
  devise_for :users

  root to: 'pages#home'

  resources :events, only: [:index, :show, :create, :new] do
    post 'invite_users', on: :member
    resources :lists, only: [:create]
  end

  resources :lists, only: [:index, :new, :show] do
    resources :ideas, only: [:new, :create]
  end




  get '/giftlist', to: 'ideas#index'

  resources :ideas, only: [:edit, :update, :show, :destroy] do

    member do
      patch "bought"
    end
    resources :comments, only: [:create]
  end
end
