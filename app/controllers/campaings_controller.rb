class CampaingsController < ApplicationController
  # GET /campaings
  # GET /campaings.xml
  def index
    @campaings = Campaing.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @campaings }
    end
  end

  # GET /campaings/1
  # GET /campaings/1.xml
  def show
    @campaing = Campaing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @campaing }
    end
  end

  # GET /campaings/new
  # GET /campaings/new.xml
  def new
    @campaing = Campaing.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @campaing }
    end
  end

  # GET /campaings/1/edit
  def edit
    @campaing = Campaing.find(params[:id])
  end

  # POST /campaings
  # POST /campaings.xml
  def create
    @campaing = Campaing.new(params[:campaing])

    respond_to do |format|
      if @campaing.save
        format.html { redirect_to(@campaing, :notice => 'Campaing was successfully created.') }
        format.xml  { render :xml => @campaing, :status => :created, :location => @campaing }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @campaing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /campaings/1
  # PUT /campaings/1.xml
  def update
    @campaing = Campaing.find(params[:id])

    respond_to do |format|
      if @campaing.update_attributes(params[:campaing])
        format.html { redirect_to(@campaing, :notice => 'Campaing was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @campaing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /campaings/1
  # DELETE /campaings/1.xml
  def destroy
    @campaing = Campaing.find(params[:id])
    @campaing.destroy

    respond_to do |format|
      format.html { redirect_to(campaings_url) }
      format.xml  { head :ok }
    end
  end
end
