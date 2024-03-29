# -*- encoding : utf-8 -*-
class VicariousController < ApplicationController
  filter_access_to :all
  # GET /vicarious
  # GET /vicarious.xml
  def index
    #@vicarious = Vicariou.all
    @vicarious = Vicariou.search(params[:search])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vicarious }
    end
  end
  
  def order
  	  @vicariou = Vicariou.find(:all, :order => "name_vicariou")
  end
  
  def show
    @vicariou = Vicariou.find(params[:id])
    @pastor = Pastor.find(@vicariou.pastor_id)
    @parish = Parish.all(:select => "id,parish_name,ubication,telephone",:conditions=> ["id in (select id from parishes where vicariou_id= ?)","#{@vicariou.id}"])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vicariou }
    end  
  end

  # GET /vicarious/1
  # GET /vicarious/1.xml


  # GET /vicarious/new
  # GET /vicarious/new.xml
  def new
    @vicariou = Vicariou.new
    @pastorA = Pastor.all(:select => "id,name,primary_last_name,second_last_name",:conditions=> ["id not in (select pastor_id from parishes) and id not in (select pastor_id from vicarious)"])
    @pastor = Pastor.all(:select => "id,name,primary_last_name,second_last_name",:order => "name")
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vicariou }
    end
  end

  # GET /vicarious/1/edit
  def edit
    @vicariou = Vicariou.find(params[:id])
    @pastorA = Pastor.all(:select => "id,name,primary_last_name,second_last_name",:conditions=> ["id not in (select pastor_id from parishes) and id not in (select pastor_id from vicarious) or id= ?","#{@vicariou.pastor_id}"])
    @pastor = Pastor.all(:select => "id,name,primary_last_name,second_last_name",:order => "name")
  end

  # POST /vicarious
  # POST /vicarious.xml
  def create
    @vicariou = Vicariou.new(params[:vicariou])
    respond_to do |format|
      if @vicariou.save
        format.html { redirect_to(@vicariou, :notice => 'Vicariou was successfully created.') }
        format.xml  { render :xml => @vicariou, :status => :created, :location => @vicariou }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vicariou.errors, :status => :unprocessable_entity }
        @pastorA = Pastor.all(:select => "id,name,primary_last_name,second_last_name",:conditions=> ["id not in (select pastor_id from parishes) and id not in (select pastor_id from vicarious)"])
        @pastor = Pastor.all(:select => "id,name,primary_last_name,second_last_name",:order => "name")
      end
    end
  end

  # PUT /vicarious/1
  # PUT /vicarious/1.xml
  def update
    @vicariou = Vicariou.find(params[:id])

    respond_to do |format|
      if @vicariou.update_attributes(params[:vicariou])
        format.html { redirect_to(@vicariou, :notice => 'Vicariou was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vicariou.errors, :status => :unprocessable_entity }
        @pastorA = Pastor.all(:select => "id,name,primary_last_name,second_last_name",:conditions=> ["id not in (select pastor_id from parishes) and id not in (select pastor_id from vicarious) or id= ?","#{@vicariou.pastor_id}"])
        @pastor = Pastor.all(:select => "id,name,primary_last_name,second_last_name",:order => "name")
      end
    end
  end

  # DELETE /vicarious/1
  # DELETE /vicarious/1.xml
  def destroy
    #   @vicariou = Vicariou.find(params[:id])
    #    @vicariou.destroy
    #
    #   respond_to do |format|
    #     format.html { redirect_to(vicarious_url) }
    #     format.xml  { head :ok }
    #   end
   
    #    @vicariou = Vicariou.find(params[:id]) 
    # 
    #      @vicariou= Vicariou.update(params[:id], :state => false  )
    #      respond_to do |format|
    #        format.html { redirect_to(vicarious_url) }
    #        format.xml  { head :ok }
    #      end

    @vicariou = Vicariou.find(params[:id]) 
    if @vicariou.state == true
      @vicariou= Vicariou.update(params[:id], :state => false  )
      respond_to do |format|
        format.html { redirect_to(vicarious_url) }
        format.xml  { head :ok }
      end
    end
    
    
  end
  
 
 

end
