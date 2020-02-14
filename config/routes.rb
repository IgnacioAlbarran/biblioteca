Rails.application.routes.draw do
  get 'web/home'
  get 'about-us', to: 'web#about_us'
  post 'web/search'

  root to: 'web#home'

  resources :books, except: [:new, :create]
  resources :authors do
    resources :books
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
