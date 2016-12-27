Rails.application.routes.draw do
  get 'view/static_pages/about', to: 'static_pages#about', as: 'about'

  get 'view/static_pages/contact', to: 'static_pages#contact', as: 'contact'

  get 'view/static_pages/index', to: 'static_pages#index', as: 'index'


  root 'static_pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
