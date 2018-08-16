Rails.application.routes.draw do
  resources :contact1s
  resources :jornadas
  resources :oferta_categoria
  resources :categoria
  resources :duracions
  resources :oferta_educativas
  resources :contactos
  resources :ofertaeducativas
  resources :usuarios
  root 'proyecto#index'
  #get 'proyecto/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
