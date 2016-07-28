Rails.application.routes.draw do
  post '/api/products/comments', to: 'products#post_comments' 
  get '/api/products/comments', to: 'products#get_comments'	

  patch '/users/last_will', to: 'users#last_will'
  devise_for :users
  devise_scope :user do
  authenticated :user do
    root :to => 'products#index'
  end
  unauthenticated :user do
    root :to => 'devise/registrations#new', as: :unauthenticated_root
  end
end

  
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
