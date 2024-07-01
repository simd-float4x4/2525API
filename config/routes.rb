Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get '/list', to: 'users#list'


  # ユーザーデータのコントローラ
  get '/0x2d0r31/v1/user/list', to: "users#index", as: 'user_list'

  # 詳細画面へ
  get "/0x2d0r31/v1/user/:id", to: "users#show", as: 'user_show'

  #　凍結
  get "/0x2d0r31/v1/user/:userId/:itemId/suspend", to: "users#suspend"
  post "/0x2d0r31/v1/user/:userId/:itemId/suspend", to: "users#suspend", as: 'user_suspend'

  # 作成
  # indexからgetで取得する
  get "/xy76Za109b/v1/user/create", to: "users#new", as: 'move_user_create'
  post "/xy76Za109b/v1/user/create", to: "users#create", as: 'post_user_create'

end
