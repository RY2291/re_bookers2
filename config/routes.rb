Rails.application.routes.draw do
  get 'books/new'
  get 'books/create'
  get 'books/index'
  get 'books/edit'
  get 'books/update'
  get 'books/destroy'
  devise_for :users
  resources :users
  resources :books
  root to: "homes#top"
  get "/about" => "homes#about"
end
