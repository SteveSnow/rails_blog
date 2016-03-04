Rails.application.routes.draw do
  resources :users

  get '/' => 'home#index'
 
  post   '/login'   => 'sessions#create'
  delete '/logout'  => 'sessions#destroy'
end
