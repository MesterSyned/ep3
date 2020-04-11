Rails.application.routes.draw do
  
  resources :areas
  resources :topicos do
    resources :comentarios
  end

  root 'topicos#index'

  devise_for :users, controllers: {registrations: 'registrations'}

end
