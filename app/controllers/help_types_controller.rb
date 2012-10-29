class HelpTypesController < ApplicationController
  filter_access_to :all
  # GET /help_types
  # GET /help_types.xml
  def index
    @help_types = HelpType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @help_types }
    end
  end

  # GET /help_types/1
  # GET /help_types/1.xml
  def show
    @help_type = HelpType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @help_type }
    end
  end

  # GET /help_types/new
  # GET /help_types/new.xml
  def new
    @help_type = HelpType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @help_type }
    end
  end

  # GET /help_types/1/edit
  def edit
    @help_type = HelpType.find(params[:id])
  end

  # POST /help_types
  # POST /help_types.xml
  def create
    @help_type = HelpType.new(params[:help_type])

    respond_to do |format|
      if @help_type.save
        format.html { redirect_to(@help_type, :notice => 'HelpType was successfully created.') }
        format.xml  { render :xml => @help_type, :status => :created, :location => @help_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @help_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /help_types/1
  # PUT /help_types/1.xml
  def update
    @help_type = HelpType.find(params[:id])

    respond_to do |format|
      if @help_type.update_attributes(params[:help_type])
        format.html { redirect_to(@help_type, :notice => 'HelpType was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @help_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /help_types/1
  # DELETE /help_types/1.xml
  def destroy
    @help_type = HelpType.find(params[:id])
    @help_type.destroy

    respond_to do |format|
      format.html { redirect_to(help_types_url) }
      format.xml  { head :ok }
    end
  end
end
