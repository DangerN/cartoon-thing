Rails.application.routes.draw do
  resources :characters
  resources :shows
  resources :creators
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
