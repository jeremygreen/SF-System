class MovementTypesController < ApplicationController
  # GET /movement_types
  # GET /movement_types.xml
  def index
    @movement_types = MovementType.all.paginate(:page => params[:page], :per_page => 3)    

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @movement_types }
    end
  end

  # GET /movement_types/1
  # GET /movement_types/1.xml
  def show
    @movement_type = MovementType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @movement_type }
    end
  end

  # GET /movement_types/new
  # GET /movement_types/new.xml
  def new
    @movement_type = MovementType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @movement_type }
    end
  end

  # GET /movement_types/1/edit
  def edit
    @movement_type = MovementType.find(params[:id])
  end

  # POST /movement_types
  # POST /movement_types.xml
  def create
    @movement_type = MovementType.new(params[:movement_type])

    respond_to do |format|
      if params[:commit].eql?('Cancel')    
           format.html { redirect_to(movement_types_url) }
           format.xml  { head :ok }
       else
         
        if @movement_type.save
          format.html { redirect_to(@movement_type, :notice => 'Movement type was successfully created.') }
          format.xml  { render :xml => @movement_type, :status => :created, :location => @movement_type }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @movement_type.errors, :status => :unprocessable_entity }
        end
      end
    end
  end

  # PUT /movement_types/1
  # PUT /movement_types/1.xml
  def update
    @movement_type = MovementType.find(params[:id])

    respond_to do |format|
      if params[:commit].eql?('Cancel')    
           format.html { redirect_to(movement_types_url) }
           format.xml  { head :ok }
       else
         
        if @movement_type.update_attributes(params[:movement_type])
          format.html { redirect_to(@movement_type, :notice => 'Movement type was successfully updated.') }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @movement_type.errors, :status => :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /movement_types/1
  # DELETE /movement_types/1.xml
  def destroy
    @movement_type = MovementType.find(params[:id])
    @movement_type.destroy

    respond_to do |format|
      format.html { redirect_to(movement_types_url) }
      format.xml  { head :ok }
    end
  end
end
