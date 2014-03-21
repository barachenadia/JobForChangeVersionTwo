JobForChange::Application.routes.draw do

  root 'static_pages#home'
  
  devise_for :companies
  devise_for :candidates
  # devise_for :candidates, controllers: { registrations: "candidates/registrations", passwords: "candidates/passwords", sessions: "candidates/sessions", confirmations: "candidates/confirmations" }
  # devise_scope :candidate do 
  #   get "candidates/profil", :to => "candidates/registrations#profil", :as => "profil_candidate_registration"
  # end

  get '/offres',            to: 'static_pages#offres'
  get '/contact',           to: 'static_pages#contact'
  get '/a_propos',          to: 'static_pages#a_propos'
  get '/mentions_legales',  to: 'static_pages#mentions_legales'
  get '/deposer_annonce',   to: 'static_pages#deposer_annonce'
  get 'profil',            to: 'static_pages#profil'
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
