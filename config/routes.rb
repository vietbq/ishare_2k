Rails.application.routes.draw do
  resources :answers
  resources :questions
  resources :user_logs
  #   resources :questions do
  #   resources :answers
  # end
  root 'static_pages#home'

  get '/404' => 'ask_questions#404'
  get '/ask_question' => 'ask_questions#ask_question'
  get '/cat_question' => 'ask_questions#cat_question'
  get '/contact_us' => 'ask_questions#contact_us'
  get '/edit_profile' => 'ask_questions#edit_profile'
  get '/login' => 'ask_questions#login'
  get '/single_question' => 'ask_questions#single_question'
  get '/single_question_poll' => 'ask_questions#single_question_poll'
  get '/user_answers' => 'ask_questions#user_answers'
  get '/user_favorite_questions' => 'ask_questions#user_favorite_questions'
  get '/user_points' => 'ask_questions#user_points'
  get '/user_profile' => 'ask_questions#user_profile'
  get '/user_questions' => 'ask_questions#user_questions'

  devise_for :users
  resources :users, only: :show
  resources :friends, only: [:create, :destroy, :update]
  
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
