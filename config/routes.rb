Rails.application.routes.draw do

  post 'mailgun/receive'

  resources :accounts do
      member do
          post 'post'
      end
  end

  resources :news

  get 'me' => 'dashboard#me', as: :me

  post 'reset' => 'session#reset', as: :reset_password
  post 'session/create', as: :log_in
  get 'session/destroy', as: :log_out

  get 'aliases' => 'alias#index', as: :aliases
  get 'aliases/show' => 'alias#show', as: :alias

  get 'groups' => 'group#index', as: :groups
  get 'groups/show' => 'group#show', as: :group

  get 'mentors' => 'mentors#index', as: :mentors
  get 'mentors/show' => 'mentors#show', as: :mentor

  get 'parents' => 'parents#index', as: :parents
  get 'parents/show' => 'parents#show', as: :parent

  get 'students' => 'students#index', as: :students
  get 'students/show' => 'students#show', as: :student

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'dashboard#index'

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
