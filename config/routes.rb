Myrottenpotatoes::Application.routes.draw do
  resources :movies do
    resources :reviews 
  end
  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/show'

  resources :movies
  root :to => redirect('/movies')
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  #resource :home, only: [:show]

end
  

