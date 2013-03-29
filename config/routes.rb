Somethingborrowed::Application.routes.draw do
  root :to => 'home#index'
  resources :items, :only => [:new, :create]
end
