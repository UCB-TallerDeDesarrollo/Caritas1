# -*- encoding : utf-8 -*-
class ParishesController < ApplicationController
  filter_access_to :all
  filter_access_to :edit, :attribute_check => true
  filter_access_to :update, :attribute_check => true
  filter_access_to :show, :attribute_check => true
  filter_access_to :destroy, :attribute_check => true
  # GET /parishes
  # GET /parishes.xml
  def index
    @parishes = Parish.search(params[:search]).sort { |a,b| a.parish_name.downcase <=> b.parish_name.downcase  }

    @parishes.each do |singleparish|
      if singleparish.workshop.nil?
      singleparish.create_workshop
      end
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @parishes }
      format.xls
    end
  end

  def report
    respond_to do |format|
      format.html # show.html.erb
      format.xls
      format.html { redirect_to(parishes_url) }
    end
  end

  # GET /parishes/1
  # GET /parishes/1.xml
  def show
    @parish = Parish.find(params[:id])
    @vicariou = Vicariou.find(@parish.vicariou_id)
    @pastor = Pastor.find(@parish.pastor_id)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @parish }
    end
  end

  # GET /parishes/new
  # GET /parishes/new.xml
  def new
    @parish = Parish.new
    @vicariou = Vicariou.all(:select => "id,name_vicariou",:conditions=>["state=TRUE"], :order => "name_vicariou")
    @pastorA = Pastor.all(:select => "id,name,primary_last_name,second_last_name",:conditions=> ["id not in (select pastor_id from parishes) and id not in (select pastor_id from vicarious) and state = TRUE"], :order => "name")
    @pastor = Pastor.all(:select => "id,name,primary_last_name,second_last_name",:conditions=>["state=TRUE"], :order => "name")
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @parish }
    end
  end

  # GET /parishes/1/edit
  def edit
    @parish = Parish.find(params[:id])
    @vicariou = Vicariou.find(:all, :order => "name_vicariou ASC",:conditions=>["state=TRUE"],:order => "name_vicariou")
    #@pastor = Pastor.all(:all, :order => "name")
    @pastorA = Pastor.all(:select => "id,name,primary_last_name,second_last_name",:conditions=> ["id not in (select pastor_id from parishes) and id not in (select pastor_id from vicarious) and state = TRUE or id= ?","#{@parish.pastor_id}"], :order => "name")
    @pastor = Pastor.all(:select => "id,name,primary_last_name,second_last_name",:conditions=>["state=TRUE"], :order => "name")
  end

  # POST /parishes
  # POST /parishes.xml
  def create

    @parish = Parish.new(params[:parish])
    @pastor = Pastor.find(:all)
    @vicariou = Vicariou.find(:all)

    respond_to do |format|
      if @parish.save
        format.html { redirect_to(@parish, :notice => 'Parish was successfully created.') }
        format.xml  { render :xml => @parish, :status => :created, :location => @parish }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @parish.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /parishes/1
  # PUT /parishes/1.xml
  def update
    @parish = Parish.find(params[:id])

    respond_to do |format|
      if @parish.update_attributes(params[:parish])
        format.html { redirect_to(@parish, :notice => 'Parish was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @parish.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /parishes/1
  # DELETE /parishes/1.xml
  def destroy
    @parish = Parish.find(params[:id])
    if @parish.state == true
      @parish= Parish.update(params[:id], :state => false  )
      respond_to do |format|
        format.html { redirect_to(parishes_url) }
        format.xml  { head :ok }
      end
    end
  end

  def authentification
    session[:authentification] = true;
    @parish = Parish.find(params[:id])
    @user_session = UserSession.new
  end

  def delete_after_authentification
    @user_session = UserSession.new
    @user_session.username =params[:username]
    @user_session.password =params[:password]
    if @user_session.save
      if permitted_to? :destroy, Parish.find(params[:parent_id])
        @parish = Parish.find(params[:parent_id])
        if @parish.state == true
          @parish= Parish.update(params[:parent_id], :state => false  )
        end
      end
      respond_to do |format|
        format.html { redirect_to(parishes_url) }
        format.xml  { head :ok }
      end
    else
      session[:failed_authentification] = "El nombre de usuario y/o contrasena incorrectos"
      respond_to do |format|
        format.html { redirect_to(parishes_url) }
        format.xml  { head :ok }
      end
    end

  end
end
