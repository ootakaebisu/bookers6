Rails.application.routes.draw do
  # root to: 'users#index'
  root 'books#index'
  devise_for :users

  #もしかしたらonly: [:new, :create, :index, :show]みたいなのいるかも〜！
  resources :books
  # post '/books/:id' => 'books#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
