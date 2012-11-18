# -*- encoding : utf-8 -*-
class UsersController < ApplicationController
  filter_access_to :all
  def index
    @users = User.get_all_users
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end
  def new  
    @user = User.new
    @volunteers = Volunteer.find(:all)
    @pastors = Pastor.find(:all)
  end
  def create
    @user = User.new(params[:user])
    respond_to do |format|
      if @user.save
        format.html { redirect_to(@user, :user => 'usuario creado correctamente') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
   end
  end  
  
  def edit
    if params[:id]
      @user = User.find(params[:id])
      @volunteers = Volunteer.find(:all)
      @pastors = Pastor.find(:all)
    else
      @user = current_user
      @volunteers = Volunteer.find(:all)
      @pastors = Pastor.find(:all)
    end
  end  
  
  def update
    if params[:id]
      @user = User.find(params[:id])
    else
      @user = current_user
    end

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(@user, :user => 'Usuario actualizado correctamente') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
  def show
    @user=User.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end
end
