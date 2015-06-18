Rails.application.routes.draw do
  root 'zip#home'
  get '/formmap', to: 'zip#index'
  get '/results', to: 'zip#results'
  get '/search/:zipcode', to: 'zip#search', as: 'search'
  post '/formmap', to: 'zip#index'
end
