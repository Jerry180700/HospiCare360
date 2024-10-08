Rails.application.routes.draw do

  # get 'profiles/home'
  get 'profiles/home', to: 'profiles#home'
  # get 'profiles/information'
  get 'home', to: 'pages#home'
  get 'services/index'
  get 'info/meet_us'

  namespace :admin do

    resources :appointments
    resources :doctors
    resources :beds
    resources :doctor_specialties
    resources :medical_resume
    resources :nurses
    resources :patients
    resources :resumes
    resources :specialties
    resources :statuses
    resources :surgeries
    resources :users

    root to: "appointments#index"
    end

  get 'profiles/home'
  get 'profiles/information'
  get 'services/index'
  get 'info/meet_us'



  devise_for :users

  # Nueva ruta
    resources :profiles

  # Rutas protegidas por Devise para autenticación



  # http://127.0.0.1:3000/patients/patient_id/bed

  # homepage
  root to: "pages#home"

  # para services
  get 'services', to: 'services#index'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :nurses

end
