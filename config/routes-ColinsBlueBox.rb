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
    #root 'pins#index'
    get 'new' => 'posts#new'
end
