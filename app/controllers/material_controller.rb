class MaterialController < ApplicationController
 

 require 'will_paginate/array'
 #include 'Paperclip'
  
   def new
	 @material = Material.new
   end

   def dashboard
   end

   def show
   end

   def create 
   	@material = Material.new(params[:@material])
   	respond_to do |format|
   	if @material.save
   		format.html{redirect_to :action=>'show',:id=>@material.id}
   	else

   	end
      end #do

   end

   def material_menu
             
   end

   def update_product
      cloth_type = params[:type_of_material]
      @selected_dress = Material.where(:type=>"#{cloth_type}")
   end

   def update_dress
    
   end

   def setting
      
   end

   def product_type_available     
       @product_type = Material.select("DISTINCT(Type),id,image_file_name,image_updated_at").group("Type")
   end

   def users_choice
      selected_type = Material.find(params[:id])
      @selected_dress = Material.where(:type=>"#{selected_type.Type}")
   end

   def add_to_cart   
      @users_choice1 =Dailytransaction.new 
      @users_choice = Material.find(params[:id])
   end

   def daily_transact
   @users_choice =Dailytransaction.new(params[:dailytransaction])
   @users_choice.sold_price = params[:sold_price]
      if @users_choice.save 
         redirect_to :action=>'success_msg', :msg=>"One Transaction Successfully Made"
      end
   end

   def dateSelection

   end

   def viewlog 
      render :js => "window.location = '/material/showlog?date=#{params[:selectdate]}'"
   end

   def showlog
      @all_material = Dailytransaction.find(:all,:conditions=>["transact_date=?",params[:date] ])
      @total_sold_price= Dailytransaction.where(:transact_date=>params[:date]).sum(:sold_price)
      @paginated_data = Kaminari.paginate_array(@all_material).page(params[:page]).per(5)   

   end

   def addNewProduct
      @material = Material.new

   end

   def saveNewProduct
      begin
         @material = Material.new(params[:@material])
         if @material.save != true
               render :action=> 'addNewProduct'
         else
            redirect_to :action=> 'show_new_product',:id=> @material.id
         end
      rescue Exception=>e
        p e
      end
   end

   def show_new_product
      
   end

   def SubtypeUpdate  
      @selected_type = Type.where(:Type=>params[:first_event]).map(&:id)
      @subtype = Subtype.find(:all,:conditions=>["type_id=?",@selected_type])
   end

   def update_subtype
      params[:first_event]
   end
end
