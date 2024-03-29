Rails.application.routes.draw do

  mount Shoppe::Engine => "/shoppe"
  devise_for :users

  #Index page/root URL: home
  root 'pages#home'

  #Define routes for pages
  get '/about' => 'pages#about'
  get '/home' => 'pages#home'
  get '/profile/:id' => 'pages#profile'

  resources :users

  #Contact form
  match '/contact', to: 'contact#new', via: 'get'
  resources "contact", only: [:new, :create]

  #Stripe resource route
  resources :charges

  #shoppe routes
  get "product/:permalink", to: "products#show", as: "product"
  post "product/:permalink", to: "products#buy", as: "buy"
  post "product/:permalink", to: "products#buy"
  get "basket", to: "orders#show"
  delete "basket", to: "orders#destroy"
  match "checkout", to: "orders#checkout", as: "checkout", via: [:get, :patch]
  match "checkout/pay", to: "orders#payment", as: "checkout_payment", via: [:get, :post]
  match "checkout/confirm", to: "orders#confirmation", as: "checkout_confirmation", via: [:get, :post]

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
