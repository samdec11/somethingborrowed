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
      get 'autocomplete'
    end
    member do
      get "borrow_request"
    end
  end
  resources :categories, :only => [:show]
  resources :users
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
