class AuctionsController < ApplicationController
  def show
  end

  def index
  end

  def new
    @auction=Auction.new
   
  end

  def create
         @auction=Auction.new(params.require(:auction).permit(:precioBase, :precioActual))
    if (@bid.save)
      redirect_to "#", notice: "se agregó la Subasta"
    else
      redirect_to "#", notice: "No se agregó la Subasta"
    end

  end

  def destroy
  end
end