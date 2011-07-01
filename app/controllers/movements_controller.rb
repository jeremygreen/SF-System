class MovementsController < ApplicationController
  # GET /movements
  # GET /movements.xml
  def index
    puts "IN INDEX"
    if(params[:status] == 'scheduled')
      @movements = Movement.find(:all, :conditions => {:status => 'scheduled'})
    elsif(params[:status] == 'assigned')
      @movements = Movement.find(:all, :conditions => {:status => 'assigned'})
    elsif(params[:status] == 'complete')
      @movements = Movement.find(:all, :conditions => {:status => 'complete'})
    else
      @movements = Movement.new
    end
  
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @movements }
    end
  end
    
  # GET /movements/1
  # GET /movements/1.xml
  def show
    
    puts "IN SHOW"
    
    @movement = Movement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @movement }
    end
  end

  # GET /movements/new
  # GET /movements/new.xml
  def new
    
    puts "IN NEW"
    
    @movement = Movement.new
    @movement.status = 'scheduled'
    @rate = Rate.new
    @rate.rate= ""

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @movement }
    end
  end

  # GET /movements/1/edit
  def edit
    
    puts "IN EDIT"
    
    @movement = Movement.find(params[:id])
    @trailer_type = EquipmentType.find(:first, :conditions => {:equipmenttype => 'Trailer'})
    @heads = Equipment.find(:all, :conditions => ["equipment_type_id != ?", @trailer_type.id])
    @trailers = Equipment.find(:all, :conditions => {:equipment_type_id => @trailer_type.id})
    
    @rate = Rate.find(:first, :conditions => {:customer_id => @movement.customer_id,:load_id => @movement.load_id,:movement_type_id => @movement.movement_type_id})
    
    #if @movement.status == 'scheduled'
    #    format.html { render :action => "edit" }
    #end
        
    #elsif @movement.status == 'assigned'
    
    #elsif @movement.status == 'complete'
        
    #end
    
  end

  # POST /movements
  # POST /movements.xml
  def create
    
    puts "IN CREATE"
    
    puts params[:movement]
    
    @movement = Movement.new(params[:movement])

    respond_to do |format|
      if params[:commit].eql?('Cancel')    
           format.html { redirect_to(movements_url(:status => @movement.status)) }
           format.xml  { head :ok }
       else
         
        if @movement.save
          format.html { redirect_to(@movement, :notice => 'Movement was successfully created.') }
          format.xml  { render :xml => @movement, :status => :created, :location => @movement }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @movement.errors, :status => :unprocessable_entity }
        end
      end
    end
  end

  # PUT /movements/1
  # PUT /movements/1.xml
  def update
    
    puts "IN UPDATE"
    
    @movement = Movement.find(params[:id])
    
    respond_to do |format|
      if params[:commit].eql?('Cancel')    
           format.html { redirect_to(movements_url(:status => @movement.status)) }
           format.xml  { head :ok }
       else
         
        if @movement.update_attributes(params[:movement])
          format.html { redirect_to(movements_path(:status => @movement.status), :notice => 'Movement was successfully updated.') }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @movement.errors, :status => :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /movements/1
  # DELETE /movements/1.xml
  def destroy
    @movement = Movement.find(params[:id])
    @movement.destroy

    respond_to do |format|
      format.html { redirect_to(movements_url) }
      format.xml  { head :ok }
    end
  end
  
  def updaterate 
    
    @id = params[:movement_id]
  
    @rate = Rate.find(:first, :conditions => {:customer_id => params[:country_id],:movement_type_id => params[:movement_type_id],:load_id => params[:load_id]})
    
    respond_to do |format|           
      format.js
    end
  end
  
end
