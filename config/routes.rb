Rails.application.routes.draw do
  devise_for :custumers
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles
  get 'signup',to: 'users#new'
  resources :users,except: [:new]
  root 'pages#about'
end
