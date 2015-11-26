class AddUserIdToCouches < ActiveRecord::Migration
  def change
    add_column :couches, :user_id, :integer
    add_column :couches, :category_id, :integer
  end
end
