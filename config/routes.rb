Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get '/hello_world' => 'application#hello_world'
  get '/hello/:name' => 'application#hello_world'
  get '/list_posts' => 'application#list_posts'
  get '/show_post/:id' => 'application#show_post'
  get '/new_post' => 'application#new_post'
  get  '/edit_post/:id' => 'application#edit_post'
  get  '/list_comments' => 'application#list_comments'
 
  post '/create_post' => 'application#create_post'
  post '/update_post/:id' => 'application#update_post'
  post '/delete_post/:id' => 'application#delete_post'
  post '/create_comment_for_post/:post_id' => 'application#create_comment'
  post '/list_posts/:post_id/delete_comment/:comment_id' => 'application#delete_comment'

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
