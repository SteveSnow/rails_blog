Rails.application.routes.draw do
  resources :users

  get '/' => 'home#index'

  post '/newpost' => 'users#add_post'


  post   '/login'   => 'sessions#create'
  delete '/logout'  => 'sessions#destroy'

  resources :comments

end
