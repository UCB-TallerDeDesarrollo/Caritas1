class BeneficiariesController < ApplicationController
  def index
    @beneficiaries = Beneficiary.search(params[:search_name],params[:search_last_name], params[:search_ci],params[:search_traits])
    @parishes = Parish.find(:all)
    @beneficiary_types = BeneficiaryType.find(:all)
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @beneficiaries }
    end
  end
  def new
    @beneficiary = Beneficiary.new
    @help_type =  HelpType.all(:select => "id, name", :order => "name")
    @parish = Parish.find(:all, :order => "parish_name")
    @beneficiary_type = BeneficiaryType.find(:all, :order => "name")

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @beneficiary }
    end
  end
  def create
    @beneficiary = Beneficiary.new(params[:beneficiary])
    @help_type =  HelpType.all(:select => "id, name", :order => "name")
    @parish = Parish.find(:all, :order => "parish_name")
    @beneficiary_type = BeneficiaryType.find(:all, :order => "name")
    respond_to do |format|
      if @beneficiary.save
        format.html { redirect_to(@beneficiary, :beneficiary => 'Beneficiary was successfully created.') }
        format.xml  { render :xml => @beneficiary, :status => :created, :location => @beneficiary }
        
        
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @beneficiary.errors, :status => :unprocessable_entity }
      end
    end
  end
  def show
    @beneficiary = Beneficiary.find(params[:id])
    @help_type =  HelpType.all(:select => "id, name")
    @parish = Parish.find(@beneficiary.parish_id)
    @beneficiary_helps = @beneficiary.beneficiary_helps
    @beneficiary_type = BeneficiaryType.find(@beneficiary.beneficiary_type_id)
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @beneficiary }
      format.xml  { render :xml => @beneficiary_help }
    end
  end
  def edit
    @beneficiary = Beneficiary.find(params[:id])
     @parish = Parish.find(:all, :order => "parish_name")
     @beneficiary_type = BeneficiaryType.find(:all, :order => "name")
    @help_type =  HelpType.find(:all)
  end
   def destroy  
    
   @beneficiary = Beneficiary.find(params[:id])
    @beneficiary.destroy 

    respond_to do |format|
      format.html { redirect_to(beneficiaries_url) }
      format.xml  { head :ok }
    end
  end
  
  def update
    @beneficiary = Beneficiary.find(params[:id])

    respond_to do |format|
      if @beneficiary.update_attributes(params[:beneficiary])
        format.html { redirect_to(@beneficiary, :beneficiary => 'Beneficiary was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @beneficiary.errors, :status => :unprocessable_entity }
      end
    end
  end
end
