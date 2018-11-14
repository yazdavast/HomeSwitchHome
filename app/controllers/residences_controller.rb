class ResidencesController < ApplicationController

  def index

  end

  def show
    @residence=Residence.find(params[:id])

  end


  def new
  	@residence= Residence.new

  end


  def edit
    @residence=Residence.find(params[:id])


  end


  def create
  	@residence=Residence.new(params.require(:residence))
  	if @monstruo.save 
  		redirect_to "/residences", notice: "se agregó la nueva propiedad"

  		else
  			render :new
      end

  end
  def destroy
    
    
  end

  def destroy
    @residence=Residence.find(params[:id])
    name=@residence.nombre
    if (@residence.destroy)
     redirect_to "/residences", notice:"Se eliminó la residencia #{name} correctamente"
    else
    redirect_to "/residences",  notice:"Error al eliminar la residencia #{name}"
    end
  end

  def update
    @residence=Residence.find(params[:id])
    if @residence.update(params.required(:residence))
      redirect_to "/residences", notice:"Se actualizó la residencia #{name} correctamente"
    else
    redirect_to "/residences",  notice:"Error al actualizar la residencia #{name}"
    end
  end 
end