class CreateValorations < ActiveRecord::Migration
  def change
    create_table :valorations do |t|
      t.integer :valor
      t.integer :user_id
      t.integer :couch_id

      t.timestamps null: false
    end
  end
end
