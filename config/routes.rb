Rails.application.routes.draw do
  get 'homes/top'
  root to: 'homes#top'
  resources :reservations, only: [:index, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
