Rails.application.routes.draw do
  root 'restaurants#index'
  # Routes pour les restaurants
  resources :restaurants do
    # Routes imbriquées pour les critiques
    resources :reviews, only: [:new, :create]
  end
end
