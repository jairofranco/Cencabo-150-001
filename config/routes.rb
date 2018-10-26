Rails.application.routes.draw do
  resources :opinions
  resources :security_elements
  resources :maintenances
  resources :rules
  resources :cyclists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
