class BidsController < ApplicationController
  def index
  end

  def show
  end

  def new
  	 @bid=Bid.new
  end

  def create
  		if (params[:valor]>@auction.precioBase) then
  	   @bid=Bid.new(params.require(:bid).permit(:valor,:auction))
    	if (@bid.save)
     	 redirect_to "#", notice: "se agregó la puja"
    	else
      	redirect_to "#", notice: "No se agregó la puja"
      	end
      end
  end
end
