require 'rho/rhocontroller'
require 'helpers/application_helper'

class SugarOpportunityController < Rho::RhoController

  include ApplicationHelper
  
  #GET /SugarOpportunity
  def index
    # sort by name in ascending order  
    @SugarOpportunities = SugarOpportunity.find(:all, :order => 'name')  
    render
  end

  # GET /SugarOpportunity/1
  def show
    @SugarOpportunity = SugarOpportunity.find(@params['id'])
    render :action => :show
  end

  # GET /SugarOpportunity/new
  def new
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
    redirect :action => :index
  end

  # POST /SugarOpportunity/1/update
  def update
    @SugarOpportunity = SugarOpportunity.find(@params['id'])
    @SugarOpportunity.update_attributes(@params['SugarOpportunity'])
    redirect :action => :index
  end

  # POST /SugarOpportunity/1/delete
  def delete
    @SugarOpportunity = SugarOpportunity.find(@params['id'])
    @SugarOpportunity.destroy
    redirect :action => :index
  end
end
