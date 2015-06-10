Rails.application.routes.draw do

  # get 'sessions/create'
  #
  # get 'sessions/destroy'

  resources :session, :only => [:create, :destroy]
  resources :posts do
    resources :comments, :only => [:create, :edit, :destroy]
  end

 # get 'posts/edit'
 #
 #  get 'comments/index'
 #
 #  get 'posts/index'

  root 'home#index'

end
