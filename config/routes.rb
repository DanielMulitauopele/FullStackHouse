Rails.application.routes.draw do
  root 'cards#index'

  resources :cards, only: [:index, :show]
  resources :decks, only: [:index, :show]
end
