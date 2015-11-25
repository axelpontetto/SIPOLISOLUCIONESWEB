class CreateValorationUsers < ActiveRecord::Migration
  def change
    create_table :valoration_users do |t|
      t.integer :valor
      t.integer :user_id
      t.integer :reservation_id

      t.timestamps null: false
    end
  end
end
