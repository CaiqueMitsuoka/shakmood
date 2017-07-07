Rails.application.routes.draw do
  devise_for :users

  root 'moods#new'

  post '/moods', to: 'moods#create'
end
