Rails.application.routes.draw do
    get '/' => 'products#index'
  get '/products' => 'products#index'
  get '/products/new' => 'products#new'
  post '/products' => 'products#create'
  get '/products/random' => 'products#random'
  get '/products/:id' => 'products#show'
  get '/products/:id/edit' => 'products#edit'
  patch '/products/:id' => 'products#update'
  delete '/products/:id' => 'products#destroy'

  get '/suppliers' => 'suppliers#index'
  get '/suppliers/new' => 'suppliers#new'
  post '/suppliers' => 'suppliers#create'
  get '/suppliers/:id' => 'suppliers#show'
  get '/suppliers/:id/edit' => 'suppliers#edit'
  patch '/suppliers/:id' => 'suppliers#update'
  delete '/suppliers/:id' => 'suppliers#destroy'

  get '/images' => 'images#index'
  get '/images/new' => 'images#new'
  post '/images' => 'images#create'
  get '/images/:id' => 'images#show'
  get '/images/:id/edit' => 'images#edit'
  patch '/images/:id' => 'images#update'
  delete '/images/:id' => 'images#destroy'


  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  post '/cart' => 'carted_products#create' 
  get '/carted_products' => 'carted_products#index'
  delete 'carted_products/:id' => 'carted_products#destroy'

end
