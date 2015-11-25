class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :apellido, :string
    add_column :users, :nacimiento, :date
    add_column :users, :edad, :integer
  end
end
