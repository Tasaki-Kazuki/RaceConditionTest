Rails.application.routes.draw do
get 'wallet/:id', to: 'wallet#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
