Rails.application.routes.draw do
  get '/make', to: 'apis#make'
  get '/ships', to: 'ships#show'
end
