Rails.application.routes.draw do

  resources :posts do
    resources :comments, :only => [:create]
  end

 # get 'posts/edit'
 #
 #  get 'comments/index'
 #
 #  get 'posts/index'

  root 'home#index'

end
