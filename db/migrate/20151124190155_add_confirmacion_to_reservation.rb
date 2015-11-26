class AddConfirmacionToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :confirmacion, :boolean
  end
end
