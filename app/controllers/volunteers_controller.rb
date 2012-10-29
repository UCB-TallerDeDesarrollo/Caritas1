filter_access_to :all# -*- encoding : utf-8 -*-
class VolunteersController < ApplicationController
  filter_access_to :all
  # GET /volunteers
  # GET /volunteers.xml
def index
  if params[:order]
    if session[:criterion]
      @volunteers = Volunteer.order_by(params[:order],session[:criterion])
      @groups = Group.find(:all)
      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @volunteers }
        format.xls
      end
      if session[:criterion] == 'asc'
        session[:criterion] = 'desc'
      else
        session[:criterion] = 'asc'
      end
    else
      session[:criterion] = 'asc'
      @volunteers = Volunteer.order_by(params[:order],session[:criterion])
      @groups = Group.find(:all)
      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @volunteers }
        format.xls
        end
    end
  else
      @volunteers = Volunteer.search(params[:search],params[:group])
      @groups = Group.find(:all)
      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @volunteers }
        format.xls
      end
  end
end

  # GET /volunteers/1
  # GET /volunteers/1.xml
  def show
    @volunteer = Volunteer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @volunteer }
    end
  end

  # GET /volunteers/new
  # GET /volunteers/new.xml
  def new
    @volunteer = Volunteer.new
    @groups = Group.find(:all,:order => "name")
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @volunteer }
    end
  end

  # GET /volunteers/1/edit
  def edit
    @volunteer = Volunteer.find(params[:id])
    @groups = Group.find(:all,:order => "name")
  end

  # POST /volunteers
  # POST /volunteers.xml
  def create
    @volunteer = Volunteer.new(params[:volunteer])

    respond_to do |format|
      if @volunteer.save
        format.html { redirect_to(@volunteer, :notice => 'El voluntario fue creado exitosamente.') }
        format.xml  { render :xml => @volunteer, :status => :created, :location => @volunteer }
        
        t = Volunteer.find(@volunteer.id)
        t.update_attributes(:state => true)
      else
        @groups = Group.find(:all,:order => "name")
        format.html { render :action => "new" }
        format.xml  { render :xml => @volunteer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /volunteers/1
  # PUT /volunteers/1.xml
  def update
    @volunteer = Volunteer.find(params[:id])

    respond_to do |format|
      if @volunteer.update_attributes(params[:volunteer])
        format.html { redirect_to(@volunteer, :notice => 'El voluntario fue editado exitosamente.') }
        format.xml  { head :ok }
      else
        @groups = Group.find(:all,:order => "name")
        format.html { render :action => "edit" }
        format.xml  { render :xml => @volunteer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /volunteers/1
  # DELETE /volunteers/1.xml
  def destroy
    @volunteer = Volunteer.find(params[:id])
    @volunteer.state ? @volunteer.update_attributes(:state => false) : @volunteer.update_attributes(:state => true)    

    respond_to do |format|
      format.html { redirect_to(volunteers_url) }
      format.xml  { head :ok }
    end
  end
end
