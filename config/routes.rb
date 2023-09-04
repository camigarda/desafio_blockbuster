Rails.application.routes.draw do
  get 'inicio/index'
  resources :peliculas
  resources :clientes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "inicio#index"
end
