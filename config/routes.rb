Factory::Application.routes.draw do
  resources :lote_cheques do 
    resources :cheques
  end

  resources :municipio_dominios

  resources :pais_dominios

  resources :paises

  resources :countries

  resources :municipios

  resources :ufs
  
  resources :pais

  resources :tipo_clientes

  resources :items

  resources :situacao_items

  resources :ocorrencia

  resources :situacao_ocorrencia

  resources :periodicidade_despesas

  resources :tipo_juros

  resources :situacao_cheques

  resources :operacao_financeiras

  resources :tipo_operacao_financeiras
  resources :parcela_despesa
  
  
  resources :despesas
  
  resources :tipo_despesas

  resources :historico_cheques

  resources :cheques
  #match '/new_lote' => "cheques#new_lote", :as => "new_lote"
  
  resources :socios

  resources :clientes
  match '/new_divida/:id' => 'clientes#new_divida', :as => 'new_divida'  
  match '/create_divida' => 'clientes#create_divida', :as => 'create_divida'
  
  resources :emitentes

  resources :bancos

  resources :relatorios
  
  resources :divida_clientes
  
  #Sessions
  resource :session
  match '/login' => "sessions#new", :as => "login"
  match '/logout' => "sessions#destroy", :as => "logout"
  
  #Relatórios
  resource :relatorios
  #new
  match '/relatorios_new_operacoes' => 'relatorios#new_operacoes', :as => "relatorio_new_operacoes"
  match '/relatorios_new_clientes' => 'relatorios#new_clientes', :as => "relatorio_new_clientes"
  match '/relatorios_new_emitentes' => 'relatorios#new_emitentes', :as => "relatorio_new_emitentes"
  match '/relatorios_new_cheques' => 'relatorios#new_cheques', :as => "relatorio_new_cheques"
  
  #show
  match '/relatorios_operacoes' => "relatorios#operacoes", :as => "relatorio_operacoes"  
  match '/relatorios_emitentes' => "relatorios#emitentes", :as => "relatorio_emitentes"
  match '/relatorios_clientes' => "relatorios#clientes", :as => "relatorio_clientes"
  match '/relatorios_cheques' => "relatorios#cheques", :as => "relatorio_cheques"
  
  #Index
  resource :index
  match '/' => "index#index", :as => 'home'

  resource :calculadora
  match '/calculadora' => "calculadora#index", :as => 'calculadora'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
