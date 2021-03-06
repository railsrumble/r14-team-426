Rails.application.routes.draw do
  root to: "articles#index"

  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout

  resources :api, :only => [:show]
  resources :apiuser
  resources :articles
end
