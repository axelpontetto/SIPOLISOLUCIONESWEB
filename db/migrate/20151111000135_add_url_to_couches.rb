class AddUrlToCouches < ActiveRecord::Migration
  def change
    add_column :couches, :pais, :string
    add_column :couches, :provincia, :string
    add_column :couches, :ciudad, :string
    add_column :couches, :capacidad, :integer
    add_column :couches, :ocupado, :boolean 
  end
end
