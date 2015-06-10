Rails.application.routes.draw do

  # get 'sessions/create'
  #
  # get 'sessions/destroy'

  resources :posts do
    resources :comments, :only => [:create, :edit, :destroy]
  end
  resource :session, :only => [:create, :destroy]

 # get 'posts/edit'
 #
 #  get 'comments/index'
 #
 #  get 'posts/index'

  root 'home#index'

end
