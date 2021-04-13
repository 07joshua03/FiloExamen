Rails.application.routes.draw do
  resources :terms
  get 'home/index'
  resources :end_terms
  get 'eindtermen', to: 'end_terms#index'
  get 'begrippen', to: 'terms#index'
  get 'test', to: 'end_terms#test'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
