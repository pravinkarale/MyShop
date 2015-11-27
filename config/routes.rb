MyShop::Application.routes.draw do

  resources :sizes
  resources :subtypes
  post 'update'=>"subtypes#update"
  
  resources :types
  
  #resources :material do
  #  collection do
      # get 'update_product'
       get 'material/dashboard'=>"material#dashboard"
      # get 'material_menu'
       get 'material/product_type_available'=>'material#product_type_available'
      # get 'users_choice'
       get 'material/add_to_cart'=>"material#add_to_cart"
       post 'material/daily_transact'=>'material#daily_transact' 
       post 'material/viewlog'=>'material#viewlog'
       get 'material/showlog'=>'material#showlog'
       get 'material/addNewProduct'=>'material#addNewProduct'
       post 'material/saveNewProduct'=>'material#saveNewProduct'
       get 'material/show_new_product' => 'material#show_new_product'
       
  # end
  #end
  
   root :to => 'material#dashboard'

   match ':controller(/:action(/:id))(.:format)'
#   match "/uploads/:id/:basename.:extension", :controller => "material", :action => "users_choice", :conditions => { :method => :get }
end
