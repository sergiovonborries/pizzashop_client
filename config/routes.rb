Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/search', to: 'welkome#new'
  post '/search', to: 'welkome#show'
  get 'add_row', to: 'welkome#add_row'
end
