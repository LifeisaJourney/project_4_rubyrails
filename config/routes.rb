Rails.application.routes.draw do

  resources :posts, path: '/api/posts' do 
    resources :comments
  end 
  resources :users, path: '/api/users'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
#   get ‘/signup’ => ‘users#new’
# post ‘/users’ => ‘users#create’

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
