Rails.application.routes.draw do
  devise_for :users

  # Rutas protegidas por Devise para autenticación
  authenticated :user do
    # Aquí van las rutas que solo los usuarios autenticados pueden ver
    namespace :admin do
      resources :patients
      resources :doctors
      resources :nurses
      # Más rutas protegidas
    end
  end

  resources :patients do
    resources :beds
  end


  # homepage
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

end
