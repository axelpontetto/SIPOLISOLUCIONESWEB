class AddValorarToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :valorar, :boolean
  end
end
