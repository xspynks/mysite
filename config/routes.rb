Rails.application.routes.draw do
  resources :posts
  mount Avo::Engine, at: Avo.configuration.root_path
  devise_for :users
  
  root "home#index"
end
