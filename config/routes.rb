Rails.application.routes.draw do
 devise_for :users

  root to: 'homes#top'
  get '/home/about', to: 'homes#about'
  resources :users
  resources :books
  patch '/books',to:'books#create'
end
