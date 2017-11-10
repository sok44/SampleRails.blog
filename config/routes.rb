Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: "home#index"

  get '/', to: 'home#index'
  
  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'
  #resource :contacts, only: [:new, :create]

  #1-ый способ чтобы url http://localhost:3000/contacts обрабаотывал запрос GET
  #прописать маршрут вручную
  #get 'contacts' => 'contacts#new'
  #resource :contacts, only: [:create]

  #2-ой способ экшен new теперь доступен по базавому пути /contacts/ и метод GET
  resource :contacts, only: [:new, :create], path_names: { :new => '' }

  resources :articles do
    resources :comments
  end
  
end
