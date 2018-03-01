Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do

    member do
      get :tweets
      get :likes
      get :followings
      get :followers
    end
  end
  resources :followships, only: [:create, :destroy]

  resources :tweets, only: [:index, :show, :new, :create] do

    resources :replies, only: [:index, :create, :destroy]

    member do
      post :like
      post :unlike
    end

  end

  root "tweets#index"


  namespace :admin do
    resources :tweets, only: [:index, :destroy]
    root "tweets#index"
  end
=======
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  # 請依照專案指定規格來設定路由
>>>>>>> 3f687d8450c1b3408c06805c3dccba381bd73b72

end
