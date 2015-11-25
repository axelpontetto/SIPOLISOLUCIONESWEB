class ValorationsController < ApplicationController

def new
	@valoration = Valoration.new(couch_id: params[:couch_id], reservation_id: params[:reservation_id])
end


 def create 
 	@couch = Couch.find(params[:couch_id])
 	@valoration = @couch.valorations.create(valoration_params)
# 	@valoration.reservation_id = Reservation.find.(params[:reservation_id])
 	if @valoration.reservation != nil
 	@valoration.reservation.valorar= true
 	@valoration.reservation.valorar.save
 	end 
 	@valoration.user_id = current_user.id
 	if @valoration.save
      flash[:notice] = "Validacion creada correctamente."
    else
      flash[:notice] = "Error al validar."
    end
 #	@valoration = @couch.valorations.create(valoration_params)
 	redirect_to myreservations_reservations_path
  end 

private 

def valoration_params
  params.require(:valoration).permit(:valor,:user_id, :couch_id, :reservation_id)
end




end
