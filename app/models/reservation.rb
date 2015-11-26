class Reservation < ActiveRecord::Base
	belongs_to :couch
	belongs_to :user

	validate :validate_fech_actual_ing
	validate :validate_fech
	validate :couch_mismas_fechas
	validate :usuario_ya_tiene_reserva_en_fecha


  	def validate_fech
  		if (fech_ing == fech_egr) || (fech_egr < fech_ing)
  			if (fech_ing == fech_egr)
    		errors.add(:fech_ing, 'La fecha de ingreso es igual a la fecha de egreso')
    		else
    			errors.add(:fech_ing, 'La fecha de ingreso es menor que la fecha de egreso')
    		end
  		end
  	end

	def validate_fech_actual_ing
    	if (fech_ing != nil)
      		if (DateTime.now.to_date > fech_ing )
        		errors.add(:fech_ing, "La fecha de ingreso debe ser mayor a la actual.")
      		end
    	end
	end

	 def couch_mismas_fechas
    	rango_actual = fech_ing..fech_egr
    	reservas_mismo_couch = Reservation.where('couch_id = ? and confirmacion = ?', couch_id, true)
    	reservas_mismo_couch.each do |reserva|
      		rango_reserva = reserva.fech_ing..reserva.fech_egr
      		if rango_reserva.overlaps?(rango_actual)
        		errors.add(:fech_egr, "El couch está ocupado en estas fechas, prueba antes del #{reserva.fech_ing.to_formatted_s(:short)}, o después del #{reserva.fech_egr.to_formatted_s(:short)}.")
      		end
    	end
  	end

  	  def usuario_ya_tiene_reserva_en_fecha
    	rango_actual = fech_ing..fech_egr
    	reservas_usuario = Reservation.where('user_id = ? and confirmacion = ?', user_id, true)
    	reservas_usuario.each do |reserva|
      		rango_reserva = reserva.fech_ing..reserva.fech_egr
      		if rango_reserva.overlaps?(rango_actual)
        		errors.add(:fech_egr, "Realizaste una reserva para esa fecha, prueba antes del #{reserva.fech_ing.to_formatted_s(:short)}, o después del #{reserva.fech_egr.to_formatted_s(:short)}.")
      		end
    	end
  	end


end
