class SubtypesController < ApplicationController
   
  def index
    @subtypes = Subtype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subtypes }
    end
  end

  
  def show
    @subtype = Subtype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subtype }
    end
  end

  
  def new
    @subtype = Subtype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subtype }
    end
  end

  
  def edit
     @subtype = Subtype.find(params[:id])    
  end

  
  def create
    @subtype = Subtype.new
    @subtype.subtype = params[:subtype]
    @subtype.type_id = params[:Type][:Type]  

    respond_to do |format|
      if @subtype.save
        format.html { redirect_to @subtype, notice: 'Subtype was successfully created.' }
        format.json { render json: @subtype, status: :created, location: @subtype }
      else
        format.html { render action: "new" }
        format.json { render json: @subtype.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update  
     
    @new_subtype = Subtype.find(params[:id])
    @new_subtype.type_id=params[:type_id]
    @new_subtype.subtype=params[:subtype]

    respond_to do |format|
      if @new_subtype.update_attributes(params[:new_subtype])
        format.html { redirect_to @new_subtype, notice: 'Subtype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @subtype.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @subtype = Subtype.find(params[:id])
    @subtype.destroy

    respond_to do |format|
      format.html { redirect_to subtypes_url }
      format.json { head :no_content }
    end
  end
end
