class BeneficiariesController < ApplicationController
  def index
    @beneficiaries = Beneficiary.get_all_beneficiaries();
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @beneficiaries }
    end
  end
  def new
    @beneficiary = Beneficiary.new
    @help_type = HelpType.all(:select => all)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @beneficiary }
    end
  end
  def create
    @beneficiary = Beneficiary.new(params[:beneficiary])

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

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @beneficiary }
    end
  end
  def edit
    @beneficiary = Beneficiary.find(params[:id])
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
