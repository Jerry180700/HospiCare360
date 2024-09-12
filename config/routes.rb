Rails.application.routes.draw do
  namespace :admin do
      resources :appointments
      resources :beds
      resources :doctors
      resources :doctor_specialties
      resources :medical_resumes
      resources :nurses
      resources :patients
      resources :resumes
      resources :specialties
      resources :surgeries
      resources :users

      root to: "appointments#index"
    end
  devise_for :users

  # Rutas protegidas por Devise para autenticación



  # http://127.0.0.1:3000/patients/patient_id/bed

  # homepage
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :nurses

end
