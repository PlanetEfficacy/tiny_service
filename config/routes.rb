Rails.application.routes.draw do
  post '/callback', to: "callback#create", as: 'callback'
  get '/callbacks', to: "callback#index"
end
