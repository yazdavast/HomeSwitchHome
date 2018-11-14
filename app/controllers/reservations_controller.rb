class ReservationsController < ApplicationController
	def index
		redirect_to root_path
	end
	def check
		c=Date.parse(params[:fechaInicio]);
		c=c + 7;
		@reservation=Reservation.create(residence_id: params[:id],precio: params[:precio],email: params[:email],fechaInicio: params[:fechaInicio],fechaFin: c)
		if @reservation.save
			redirect_to root_path
		end
	end
	def create

	end
end	