class AddEstadoToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :estado, :boolean
  end
end
