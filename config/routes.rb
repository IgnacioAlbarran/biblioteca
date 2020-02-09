Rails.application.routes.draw do
  get 'web/home'
  get 'web/about_us'
  get 'web/search'
  resources :books
  resources :authors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
