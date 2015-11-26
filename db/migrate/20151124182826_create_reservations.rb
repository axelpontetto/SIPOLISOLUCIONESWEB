class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :couch_id
      t.integer :user_id
      t.date :fech_ing
      t.date :fech_egr

      t.timestamps null: false
    end
  end
end
