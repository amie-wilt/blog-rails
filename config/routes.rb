Rails.application.routes.draw do

  resources :posts do
    resources :comments, :only => [:create, :edit, :destroy]
  end

  resources :sessions, :only => [:create, :destroy]

  resources :charges

  root 'home#index'

  get "/auth/github/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout

  get 'tags/:tag', to: 'posts#index', as: "tag"

end
