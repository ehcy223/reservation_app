Rails.application.routes.draw do
  get 'reservations/index'
  get 'reservations/new'
  get 'reservations/create'
  get 'homes/top'
  root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
