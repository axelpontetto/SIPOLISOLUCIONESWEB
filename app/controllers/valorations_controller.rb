class ValorationsController < ApplicationController


 def create 

 	@couch = Couch.find(params[:couch_id])

 	@valoration = @couch.valorations.new(valoration_params)

 	@valoration.user_id = current_user.id

 	if @valoration.save
      flash[:notice] = "Validacion creada correctamente."
    else
      flash[:notice] = "Error al validar."
    end
 #	@valoration = @couch.valorations.create(valoration_params)
    
    redirect_to couches_path
  end 

private 

def valoration_params
  params.require(:valoration).permit(:valor,:user_id)
end


end
