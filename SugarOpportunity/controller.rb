require 'rho/rhocontroller'

class SugarOpportunityController < Rho::RhoController

  #GET /SugarOpportunity
  def index
    @SugarOpportunities = SugarOpportunity.find(:all)
    render
  end

  # GET /SugarOpportunity/1
  def show
    @SugarOpportunities = SugarOpportunity.find(@params['object'])
  end

  # GET /SugarOpportunity/new
  def new
    @SugarOpportunity = SugarOpportunity.new
    render :action => :new
  end

  # GET /SugarOpportunity/1/edit
  def edit
    @SugarOpportunity = SugarOpportunity.find(@params['id'])
    render :action => :edit
  end

  # POST /SugarOpportunity/create
  def create
    @SugarOpportunity = SugarOpportunity.new(@params['SugarOpportunity'])
    @SugarOpportunity.save
    redirect :index
  end

  # POST /SugarOpportunity/1/update
  def update
    @SugarOpportunity = SugarOpportunity.find(@params['id'])
    @SugarOpportunity.update_attributes(@params['SugarOpportunity'])
    redirect :index
  end

  # POST /SugarOpportunity/1/delete
  def delete
    @SugarOpportunity = SugarOpportunity.find(@params['id'])
    @SugarOpportunity.destroy
    redirect :index
  end
end
