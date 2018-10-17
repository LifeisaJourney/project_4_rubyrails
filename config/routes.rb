Rails.application.routes.draw do
  resources :comments, path: '/api/comments'
  resources :posts, path: '/api/posts'
  resources :users, path: '/api/users'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
