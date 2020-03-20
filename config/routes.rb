Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'order#new'

  get '/order', to: 'order#new'
  post '/order', to: 'order#show'
  get 'add_row', to: 'order#add_row'
end
