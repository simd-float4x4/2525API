Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get '/list', to: 'users#list'


  # ユーザーデータのコントローラ
  get '/0x2d0r31/v1/user/list', to: "users#index", as: 'user_list'

  # 詳細画面へ
  get "/0x2d0r31/v1/user/:id", to: "users#show", as: 'user'

  #　凍結
  post "/0x2d0r31/v1/user/:userId/:itemId/suspend", to: "users#suspend", as: 'user_suspend'

end
