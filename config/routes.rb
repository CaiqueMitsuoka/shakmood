Rails.application.routes.draw do
  resources :teams
  devise_for :users, controllers: {
      registrations: 'users/registrations'
    }

  root 'moods#new'

  post '/moods', to: 'moods#create'
end
