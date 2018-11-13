class ResidencesController < ApplicationController

  def index

  end

  def show

  end


  def new
  	@residence= Residence.new
  end

  def edit
  end


  def create
  	@residence=Residence.new(params.require(:residence))
  	if @monstruo.save 
  		redirect_to "/residences"
  		else
  			render :new
  		end
  end

  def reserve
    @residence=Residence.find(params[:id])
    
  end
  def edit

  end


end
