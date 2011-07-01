class EquipmentController < ApplicationController
  # GET /equipment
  # GET /equipment.xml
  def index
    @equipment = Equipment.all.paginate(:page => params[:page], :per_page => 3)    
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @equipment }
    end
  end

  # GET /equipment/1
  # GET /equipment/1.xml
  def show
    @equipment = Equipment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @equipment }
    end
  end

  # GET /equipment/new
  # GET /equipment/new.xml
  def new
    @equipment = Equipment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @equipment }
    end
  end

  # GET /equipment/1/edit
  def edit
    @equipment = Equipment.find(params[:id])
  end

  # POST /equipment
  # POST /equipment.xml
  def create
    @equipment = Equipment.new(params[:equipment])

    respond_to do |format|
      
      if params[:commit].eql?('Cancel')    
          format.html { redirect_to(equipment_index_url) }
          format.xml  { head :ok }
      else
        
        if @equipment.save
          format.html { redirect_to(equipment_index_path, :notice => 'Equipment was successfully created.') }
          format.xml  { render :xml => @equipment, :status => :created, :location => @equipment }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @equipment.errors, :status => :unprocessable_entity }
        end
      end
    end
  end

  # PUT /equipment/1
  # PUT /equipment/1.xml
  def update
    @equipment = Equipment.find(params[:id])

    respond_to do |format|
      
      if params[:commit].eql?('Cancel')    
          format.html { redirect_to(equipment_index_url) }
          format.xml  { head :ok }
      else
        
        if @equipment.update_attributes(params[:equipment])
          format.html { redirect_to(equipment_index_path, :notice => 'Equipment was successfully updated.') }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @equipment.errors, :status => :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /equipment/1
  # DELETE /equipment/1.xml
  def destroy
    @equipment = Equipment.find(params[:id])
    @equipment.destroy

    respond_to do |format|
      format.html { redirect_to(equipments_url) }
      format.xml  { head :ok }
    end
  end
end
