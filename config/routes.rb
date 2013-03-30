Somethingborrowed::Application.routes.draw do
  root :to => 'home#index'
  resources :items, :only => [:new, :create] do
    collection do
      get "map"
    end
  end
  resources :users
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
