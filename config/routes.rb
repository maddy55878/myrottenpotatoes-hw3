Myrottenpotatoes::Application.routes.draw do
  resources :movieusers
  resources :users
  
  resources :movies do
    resources :reviews 
  end
  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/show'
  get 'signup' => 'movieusers#new'
  post 'create' => 'movieusers#create'
  get 'login' => 'sessions#new', :as => 'loginuser'
  post 'find' => 'sessions#find'
#match 'logout' => 'sessions#destroy' , as: 'logout'

  resources :movies
  root :to => redirect('/movies')
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  #resource :home, only: [:show]

end
  

