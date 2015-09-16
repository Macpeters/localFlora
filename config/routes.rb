Rails.application.routes.draw do

  root 'plants#index'

  resources :plants do 
    resources :flowers, :only=>[:new, :create]
    resources :fruits, :only=>[:new, :create]
    resources :roots, :only=>[:new, :create]
    resources :stalks, :only=>[:new, :create]
    resources :leaves, :only=>[:new, :create]
  end

  resources :flowers, :except=>[:new, :create]
  resources :fruits, :except=>[:new, :create]
  resources :roots, :except=>[:new, :create]
  resources :stalks, :except=>[:new, :create]
  resources :leaves, :except=>[:new, :create]

end
