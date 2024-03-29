# -*- encoding : utf-8 -*-
class NoticesController < ApplicationController
  # GET /notices
  # GET /notices.xml
  filter_access_to :all
  filter_access_to :edit, :attribute_check => true
  filter_access_to :update, :attribute_check => true

  record_select :per_page => 5,
    :search_on => ['title'],
    :full_text_search => true
    
  filter_access_to :all
  def index
    @notices = Notice.search(params[:search])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @notices }
    end
  end

  def index_public
    @notices = Notice.search(params[:search])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @notices }
    end
  end

  # GET /notices/1
  # GET /notices/1.xml
  def show
    @notice = Notice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @notice }
    end
  end

  # GET /notices/1
  # GET /notices/1.xml
  def show_public
    @notice = Notice.find(params[:id])

    respond_to do |format|
      format.html # show_public.html.erb
      format.xml  { render :xml => @notice }
    end
  end

  # GET /notices/new
  # GET /notices/new.xml
  def new
    @notice = Notice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @notice }
    end
  end

  # GET /notices/1/edit
  def edit
    @notice = Notice.find(params[:id])
  end

  # POST /notices
  # POST /notices.xml
  def create
    @notice = Notice.new(params[:notice])
    @notice.user_id = current_user.id

    respond_to do |format|
      if @notice.save
        format.html { redirect_to(@notice, :notice => 'Notice was successfully created.') }
        format.xml  { render :xml => @notice, :status => :created, :location => @notice }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @notice.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /notices/1
  # PUT /notices/1.xml
  def update
    @notice = Notice.find(params[:id])

    respond_to do |format|
      if @notice.update_attributes(params[:notice])
        format.html { redirect_to(@notice, :notice => 'Notice was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @notice.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /notices/1
  # DELETE /notices/1.xml
  def destroy
    @notice = Notice.find(params[:id])
    @notice.destroy

    respond_to do |format|
      format.html { redirect_to(notices_url) }
      format.xml  { head :ok }
    end
  end
end
