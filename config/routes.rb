Rails.application.routes.draw do
  root 'timeline#list_friends'

  get 'about_user' => "profile#about_user"

  get  'new_snarl' => "profile#new_snarl"
  post 'new_snarl' => "profile#create_new_snarl"

  post 'sessions' => "sessions#create"
  get 'sessions/sign_in' => "sessions#sign_in", as: "sign_in"

  delete 'sign_out' => "sessions#sign_out", as: "sign_out"

  get 'sign_up' => "sessions#sign_up", as: "sign_up"
  post 'sign_up' => "sessions#create_dingo", as: "create_dingo"

  post 'create_buttsniff' => "profile#create_buttsniff", as: "create_buttsniff"
  post 'destroy_buttsniff' => "profile#destroy_buttsniff", as: "destroy_buttsniff"

  get 'timeline/list_all' => "timeline#list_all", as: "list_all"

  get 'timeline/list_friends' => "timeline#list_friends", as: "user_timeline"

  get 'profile/about_others'

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
