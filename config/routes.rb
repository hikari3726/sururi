Rails.application.routes.draw do
  root 'static_pages#home'
  get :about, to: 'static_pages#about'
  get :use_of_terms, to: 'static_pages#terms'

  get :signup, to: 'users#new'
  resources :users

  get :login, to: 'sessions#new'
  post :login, to: 'sessions#create'
  delete :logout, to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
