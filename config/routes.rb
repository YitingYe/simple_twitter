Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    member do
      get :tweets
    end
  end

  resources :followships, only: [:create, :destroy]

  resources :tweets, only: [:index, :show, :new, :create] do
    resources :replies, only: [:index, :create, :destroy]
  end

  root "tweets#index"



  namespace :admin do
    resources :tweets, only: [:index, :destroy]
    root "tweets#index"
  end

end
