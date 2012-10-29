# -*- encoding : utf-8 -*-
class BeneficiaryHelpsController < ApplicationController
  filter_access_to :all
  # GET /beneficiary_helps
  # GET /beneficiary_helps.xml
  def index
    @beneficiary_helps = BeneficiaryHelp.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @beneficiary_helps }
    end
  end

  # GET /beneficiary_helps/1
  # GET /beneficiary_helps/1.xml
  def show
    @beneficiary_help = BeneficiaryHelp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @beneficiary_help }
    end
  end

  # GET /beneficiary_helps/1/new
  # GET /beneficiary_helps/new.xml
  def new
    @beneficiary_help = BeneficiaryHelp.new
    @beneficiary = Beneficiary.find(params[:bid])
    @help_types = HelpType.find(:all, :order => "name")
     @beneficiary_help.beneficiary_id = params[:bid].to_i
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @beneficiary_help }
    end
  end

  # GET /beneficiary_helps/1/edit
  def edit
    @beneficiary_help = BeneficiaryHelp.find(params[:id])
    @help_types = HelpType.find(:all, :order => "name")
  end

  # POST /beneficiary_helps
  # POST /beneficiary_helps.xml
  def create
    @beneficiary_help = BeneficiaryHelp.new(params[:beneficiary_help])
    @help_types = HelpType.find(:all, :order => "name")
    respond_to do |format|
      if @beneficiary_help.save
        format.html { redirect_to(@beneficiary_help.beneficiary, :notice => 'BeneficiaryHelp was successfully created.') }
        format.xml  { render :xml => @beneficiary_help, :status => :created, :location => @beneficiary_help }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @beneficiary_help.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /beneficiary_helps/1
  # PUT /beneficiary_helps/1.xml
  def update
    @beneficiary_help = BeneficiaryHelp.find(params[:id])
  @help_types = HelpType.find(:all, :order => "name")
    respond_to do |format|
      if @beneficiary_help.update_attributes(params[:beneficiary_help])
        format.html { redirect_to(@beneficiary_help, :notice => 'BeneficiaryHelp was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @beneficiary_help.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /beneficiary_helps/1
  # DELETE /beneficiary_helps/1.xml
  def destroy
    @beneficiary_help = BeneficiaryHelp.find(params[:id])
    @beneficiary_help.destroy

    respond_to do |format|
      format.html { redirect_to(beneficiary_helps_url) }
      format.xml  { head :ok }
    end
  end
  
  # GET /beneficiary_helps/report
  # GET /beneficiary_helps/report.xml
  def report
    if(params[:date_start])
      @start = Time.utc(params[:date_start]["(1i)"],params[:date_start]["(2i)"], params[:date_start]["(3i)"], params[:date_start]["(4i)"], params[:date_start]["(5i)"])
      params[:date_start] = nil
      @end = Time.utc(params[:date_end]["(1i)"],params[:date_end]["(2i)"], params[:date_end]["(3i)"], params[:date_end]["(4i)"], params[:date_end]["(5i)"])
      params[:date_end] = nil
    else
      @start= Time.new
      @end= Time.new
    end
    @beneficiary_helps = BeneficiaryHelp.search(@start, @end)
    
    respond_to do |format|
      format.html # report.html.erb
      format.xml  { render :xml => @beneficiary_helps }
    end
  end
end
