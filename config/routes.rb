Rails.application.routes.draw do
  resources :autos
  get 'terminos_condiciones/index'
  get 'nosotros/index'
  #get 'inicio/index'
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "inicio#index"
end
