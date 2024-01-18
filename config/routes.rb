Rails.application.routes.draw do
  get 'customers/index'
  get 'customers/new'

  get "customers" => "customers#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index

  #ユーザー登録

  #get 'help' =>'staic_pages#home'
  #get 'about' =>'static_pages#help'
  #get 'contact' => 'static_pages#contact'
  #get 'signup' => 'customers#new'

end
