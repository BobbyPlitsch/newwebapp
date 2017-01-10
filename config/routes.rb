Rails.application.routes.draw do
  resources :products
  get 'about', to: 'static_pages#about'

  get 'contact', to: 'static_pages#contact'

  get 'home', to: 'static_pages#index'

  get 'orders/index', to: 'orders#index'

  get 'orders/show', to: 'orders#show'

  resources :orders, only: [:index, :show, :creat, :destroy]


  root 'static_pages#landing_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
