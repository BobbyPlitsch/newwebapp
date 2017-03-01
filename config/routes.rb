Rails.application.routes.draw do


  devise_for :users

  resources :users
  resources :orders

  resources :products do
    resources :comments
  end

  get 'about', to: 'static_pages#about'

  get 'contact', to: 'static_pages#contact'

  get 'home', to: 'static_pages#index'

  get 'index', to: 'orders#index'

  get 'orders/show', to: 'orders#show'

  get 'landing_page', to: 'static_pages#landing_page'

  get 'admin', to: 'static_pages#admin'

  post 'static_pages/thank_you'




  resources :orders, only: [:index, :show, :create, :destroy]


  root 'static_pages#landing_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
