Rails.application.routes.draw do
  get '/api/products/comments', to: 'products#comments' 	

  patch '/users/last_will', to: 'users#last_will'
  devise_for :users
  
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
