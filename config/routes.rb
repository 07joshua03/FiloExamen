Rails.application.routes.draw do
  resources :end_terms
  get 'eindtermen', to: 'end_terms#index'
  get 'test', to: 'end_terms#test'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
