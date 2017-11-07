Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'home#index'
  
  resource :contacts, only: [:new, :create]

  resources :articles
end
