# -*- encoding : utf-8 -*-
class UserSessionsController < ApplicationController
  filter_access_to :all
  def new  
    @user_session = UserSession.new  
  end
  
  def create  
    @user_session = UserSession.new(params[:user_session])  
    if @user_session.save  
      flash[:notice] = "Inicio sesion con exito."  
      redirect_to root_url  
    else  
      render :action => 'new'  
    end  
  end 
  
  def destroy  
    @user_session = UserSession.find  
    @user_session.destroy  
    flash[:notice] = "Cerro sesion con exito."  
    redirect_to root_url  
  end 
  
end
