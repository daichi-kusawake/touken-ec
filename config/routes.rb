Rails.application.routes.draw do

  #ルート設定
  root to:'users#index'


  #ログイン/ログアウト機能
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users do
    member do
      #退会処理のルーティング
      get 'unsubscribe'
      patch 'withdraw'
    end
  end
  
  resources :products

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index

end
