Rails.application.routes.draw do

  # devise_for :users
  devise_for :users, controllers: { sessions: 'sessions', registrations: 'registrations' }

  root 'events#index'

  get 'search', to: 'events#index'

  authenticate :user do
    resources :orders
    resources :venues
  end

  get 'my-events', to: 'events#my_events'

  resources :events do
    resources :tickets
  end
end
