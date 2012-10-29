# -*- encoding : utf-8 -*-
class BeneficiaryTypesController < ApplicationController
  filter_access_to :all
  # GET /beneficiary_types
  # GET /beneficiary_types.xml
  def index
    @beneficiary_types = BeneficiaryType.search(params[:search])  
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @beneficiary_types }
    end
  end

  # GET /beneficiary_types/1
  # GET /beneficiary_types/1.xml
  def show
    @beneficiary_type = BeneficiaryType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @beneficiary_type }
    end
  end

  # GET /beneficiary_types/new
  # GET /beneficiary_types/new.xml
  def new
    @beneficiary_type = BeneficiaryType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @beneficiary_type }
    end
  end

  # GET /beneficiary_types/1/edit
  def edit
    @beneficiary_type = BeneficiaryType.find(params[:id])
  end

  # POST /beneficiary_types
  # POST /beneficiary_types.xml
  def create
    @beneficiary_type = BeneficiaryType.new(params[:beneficiary_type])

    respond_to do |format|
      if @beneficiary_type.save
        format.html { redirect_to(@beneficiary_type, :notice => 'BeneficiaryType was successfully created.') }
        format.xml  { render :xml => @beneficiary_type, :status => :created, :location => @beneficiary_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @beneficiary_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /beneficiary_types/1
  # PUT /beneficiary_types/1.xml
  def update
    @beneficiary_type = BeneficiaryType.find(params[:id])

    respond_to do |format|
      if @beneficiary_type.update_attributes(params[:beneficiary_type])
        format.html { redirect_to(@beneficiary_type, :notice => 'BeneficiaryType was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @beneficiary_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /beneficiary_types/1
  # DELETE /beneficiary_types/1.xml
  def destroy
    @beneficiary_type = BeneficiaryType.find(params[:id])
    @beneficiary_type.destroy

    respond_to do |format|
      format.html { redirect_to(beneficiary_types_url) }
      format.xml  { head :ok }
    end
  end
end
