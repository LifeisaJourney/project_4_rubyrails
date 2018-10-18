Rails.application.routes.draw do

  # post 'user_token' => 'user_token#create'
  resources :posts, path: '/api/posts' do 
    resources :comments
  end 
  # resources :users, path: '/api/users'

# Home controller routes.
root   'home#index'
get    'auth'            => 'home#auth'

# Get login token from Knock
post   'user_token'      => 'user_token#create'

# User actions
get    '/api/users'          => 'users#index'
get    '/api/users/current'  => 'users#current'
post   '/api/users/create'   => 'users#create'
patch  '/api/user/:id'       => 'users#update'
delete '/api/user/:id'       => 'users#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
