Somethingborrowed::Application.routes.draw do
  root :to => 'home#index'
  resources :items do
    collection do
      get "map"
      get "borrow_instructions"
      post "deliver_borrow_instructions"
      get 'search'
      get 'return_verification'
      get 'return_verification_validation'
      post 'return'
    end
    member do
      get "borrow_request"
    end
  end
  resources :categories, :only => [:show]
  resources :users
  resources :reviews do
    collection do
      get 'owner_review_choice'
      get 'user'
      get 'item'
    end
  end
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  post '/login2' => 'session#create2'
  delete '/login' => 'session#destroy'
end
