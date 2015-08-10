Rails.application.routes.draw do
    devise_for :users
    resources :posts do
        resources :comments
        member do |variable|
            put "like", to: "posts#upvote"
        end
    end
    resources :pins
    root 'posts#index'
    get 'new' => 'posts#new'
    get 'tags/:tag' => 'posts#index', as: :tag
    
    devise_scope :user do 
        get 'login' => 'devise/_sessions#new', :as => :login
        post 'logout' => 'devise/_sessions#destroy', :as => :logout
    end

end
