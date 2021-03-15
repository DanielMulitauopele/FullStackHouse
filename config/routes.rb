Rails.application.routes.draw do
  root 'home#index'

  resources :cards, only: [:index, :show]
  resources :decks, only: [:index, :show] do 
    member do
      get :shuffle
    end
  end
end
