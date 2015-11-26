class AddValoraruserToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :valorar_user, :boolean
  end
end
