Rails.application.routes.draw do
  post '/callback', to: "commits#create", as: 'callback'
  resources :commits, only: [:index]
end
