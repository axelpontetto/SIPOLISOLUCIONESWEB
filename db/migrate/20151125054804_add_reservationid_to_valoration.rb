class AddReservationidToValoration < ActiveRecord::Migration
  def change
    add_column :valorations, :reservation_id, :integer
  end
end
