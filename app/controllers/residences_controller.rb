class ResidencesController < ApplicationController

  def index
  	
  end

  def show
  end

  def new
  	 @residence=residence.new

  	

  

  end
  def reserve
    @residence=Residence.find(params[:id])
  end
  def edit
  end
end
