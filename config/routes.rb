Rails.application.routes.draw do
  resources :users

  get '/' => 'home#index'

  post '/newpost' => 'users#add_post'

  get '/follow' => 'users#follow'
  get '/unfollow' => 'users#unfollow'
  get '/delete_post'=> 'users#delete_post'

  get '/users/:id/find' => 'users#find'

  post   '/login'   => 'sessions#create'
  delete '/logout'  => 'sessions#destroy'

  resources :comments

end
