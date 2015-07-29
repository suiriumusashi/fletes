Rails.application.routes.draw do
  
  resources :competitors

  root :to => 'home#index'

  get 'clients' => 'clients#index', as: "clients_list"
  get 'clients/:id' => 'clients#show'

  get 'drivers' => 'drivers#index', as: "drivers_list"
  get 'search/drivers' => 'drivers#search'
  get 'drivers/:id' => 'drivers#show'

  get 'nosotros' => 'home#about'

  
  resources :dashboard

  resources :cities

  resources :states

  resources :sales

  resources :inboxes

  resources :publications
  get 'assign/:id' => 'publications#assign', as: "assign"
  get 'offers' => 'publications#index', as: "offers_pub"
  get 'myoffers' => 'publications#myoffers', as: "my_offers"

  resources :ratings

  resources :loads

  resources :trucks

  resources :services

  devise_for :admins, :controllers => { registrations: "admins/registrations" }
  as :admin do 
    get '/administrator' => 'devise/sessions#new', as: "administrator"
    get '/vendedor' => 'devise/registrations#new', as: "vendedor"
  end

  devise_for :users, :controllers => { registrations: 'registrations' }
  
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
