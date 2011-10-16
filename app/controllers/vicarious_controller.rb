class VicariousController < ApplicationController
  # GET /vicarious
  # GET /vicarious.xml
  def index
    @vicarious = Vicariou.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vicarious }
    end
  end

  # GET /vicarious/1
  # GET /vicarious/1.xml
  def show
    @vicariou = Vicariou.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vicariou }
    end
  end

  # GET /vicarious/new
  # GET /vicarious/new.xml
  def new
    @vicariou = Vicariou.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vicariou }
    end
  end

  # GET /vicarious/1/edit
  def edit
    @vicariou = Vicariou.find(params[:id])
  end

  # POST /vicarious
  # POST /vicarious.xml
  def create
    @vicariou = Vicariou.new(params[:vicariou])

    respond_to do |format|
      if @vicariou.save
        format.html { redirect_to(@vicariou, :notice => 'La Vicaria se creo correctamente.') }
        format.xml  { render :xml => @vicariou, :status => :created, :location => @vicariou }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vicariou.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vicarious/1
  # PUT /vicarious/1.xml
  def update
    @vicariou = Vicariou.find(params[:id])

    respond_to do |format|
      if @vicariou.update_attributes(params[:vicariou])
        format.html { redirect_to(@vicariou, :notice => 'La Vicaria se actualizo correctamente.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vicariou.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vicarious/1
  # DELETE /vicarious/1.xml
  def destroy
    @vicariou = Vicariou.find(params[:id])
    @vicariou.destroy

    respond_to do |format|
      format.html { redirect_to(vicarious_url) }
      format.xml  { head :ok }
    end
  end
end
