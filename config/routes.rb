Rails.application.routes.draw do
  root :to => "pages#home"
  resources :pages
  resources :addresses
  # resources :users
  resources :order_products
  resources :orders
  resources :products
  
  resources :users do
    member do
      get 'get_addresses'
    end
  end
  


  get 'signup', to: 'users#new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


  
 

 