Rails.application.routes.draw do
  # ルート設定
  root to: 'static_pages#home'

  # ログイン/ログアウト機能
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'


  resources :users do
    member do
      # 退会処理のルーティング
      get 'unsubscribe'
      patch 'withdraw'
    end
  end

  #管理者側のルーティング
  namespace :admin do
    resources :products
  end

  #ユーザー側のルーティング
  scope module: :user do
    resources :products, only: %i[index show]

    resources :orders do
      collection do
        get 'complete'
        post 'confirm'
      end
    end
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index
end
