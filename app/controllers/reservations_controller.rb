class ReservationsController < ApplicationController
	def index
		redirect_to root_path
	end
	def create
		c=Date.parse(params[:fechaInicio]);
		c=c + 7;
		@reservation=Reservation.create(idCasa: params[:id],precio: params[:precio],email: params[:email],fechaInicio: params[:fechaInicio],fechaFin: c)
		if @reservation.save
			redirect_to root_path
		end
	end
end	