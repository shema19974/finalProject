Rails.application.routes.draw do
  
  resources :profiles
  get 'comments/create'
  get 'homes/index'
  resources :leaves
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :departments
  resources :posts do
    resources :comments
  end
  root to:"homes#index"
  devise_for :employees, :controllers => { registrations: 'registrations' }
  resources :employees, :only => [:show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
