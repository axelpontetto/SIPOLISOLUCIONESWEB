class AddPaisToUsers < ActiveRecord::Migration
  def change
    add_column :users, :pais, :string
  end
end
