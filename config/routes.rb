Rails.application.routes.draw do
  resources :books, only: [:create, :destroy]

  resources :bookshelves, only: [:create]
end
