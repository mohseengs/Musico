Rails.application.routes.draw do

  root 'dashboard#index'
  get  'signup' => 'user#new' 
  post 'signup' => 'user#create' 
  get 'login' => 'user#login'
  post 'login' => 'user#validate'
  get 'logout' => 'user#logout'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
