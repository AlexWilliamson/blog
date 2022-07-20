Rails.application.routes.draw do
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "posts#index"
  resources :posts, only: [:new, :index, :create, :show, :edit, :destroy, :update]
end
