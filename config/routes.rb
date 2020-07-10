Rails.application.routes.draw do
  resources :users, only: [:create, :show, :edit, :update, :destroy]
  resources :decks
  root to: 'pages#home'
  resources :flashcards
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
