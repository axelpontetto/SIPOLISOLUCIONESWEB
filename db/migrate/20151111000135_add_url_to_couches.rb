class AddUrlToCouches < ActiveRecord::Migration
  def change
    add_column :couches, :url, :text
    add_column :couches, :pais, :string
    add_column :couches, :provincia, :string
    add_column :couches, :ciudad, :string
    add_column :couches, :capacidad, :integer
    add_column :couches, :ocupado, :boolean
    add_column :couches, :url2, :text
    add_column :couches, :url3, :text
  end
end
