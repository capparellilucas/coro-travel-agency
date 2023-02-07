Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :referrals, only: [:new, :create, :index, :destroy]
  resources :school_promoters, only: [:new, :create, :index, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
