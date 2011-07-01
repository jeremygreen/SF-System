class EquipmentTypesController < ApplicationController
  # GET /equipment_types
  # GET /equipment_types.xml
  def index
    @equipment_types = EquipmentType.all.paginate(:page => params[:page], :per_page => 3)        

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @equipment_types }
    end
  end

  # GET /equipment_types/1
  # GET /equipment_types/1.xml
  def show
    @equipment_type = EquipmentType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @equipment_type }
    end
  end

  # GET /equipment_types/new
  # GET /equipment_types/new.xml
  def new
    @equipment_type = EquipmentType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @equipment_type }
    end
  end

  # GET /equipment_types/1/edit
  def edit
    @equipment_type = EquipmentType.find(params[:id])
  end

  # POST /equipment_types
  # POST /equipment_types.xml
  def create
    @equipment_type = EquipmentType.new(params[:equipment_type])

    respond_to do |format|
      if params[:commit].eql?('Cancel')    
           format.html { redirect_to(equipment_types_url) }
           format.xml  { head :ok }
       else      
      
        if @equipment_type.save
          format.html { redirect_to(equipment_types_path, :notice => 'Equipment type was successfully created.') }
          format.xml  { render :xml => @equipment_type, :status => :created, :location => @equipment_type }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @equipment_type.errors, :status => :unprocessable_entity }
        end
      end
    end
  end

  # PUT /equipment_types/1
  # PUT /equipment_types/1.xml
  def update
    @equipment_type = EquipmentType.find(params[:id])

    respond_to do |format|
      if params[:commit].eql?('Cancel')    
           format.html { redirect_to(equipment_types_url) }
           format.xml  { head :ok }
       else  
    
        if @equipment_type.update_attributes(params[:equipment_type])
          format.html { redirect_to(equipment_types_path, :notice => 'Equipment type was successfully updated.') }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @equipment_type.errors, :status => :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /equipment_types/1
  # DELETE /equipment_types/1.xml
  def destroy
    @equipment_type = EquipmentType.find(params[:id])
    @equipment_type.destroy

    respond_to do |format|
      format.html { redirect_to(equipment_types_url) }
      format.xml  { head :ok }
    end
  end
end
