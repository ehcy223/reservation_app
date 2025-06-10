Rails.application.routes.draw do
  get 'homes/top'
  root to: 'homes#top'
  resources :reservations, only: [:index, :new, :create]
  get "reservations/new", to: "reservations#new"
  get 'reservations/step1', to: 'reservations#step1'
  post 'reservations/step1', to: 'reservations#step1_submit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
