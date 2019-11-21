Rails.application.routes.draw do
  get 'comments/creat'
  get 'comments/destroy'
  get 'sessions/new'
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  post '/admin/dishes/new',  to: 'admin/dishes#create'
  resources :users
  resources :dishes, only: [:index, :show] do
    resources :comments, only: [:create, :destroy]
  end

  namespace :admin do
    resources :users
    resources :dishes
    resources :staffs
    resources :tables
    resources :bills
    resources :menus
  end
end

