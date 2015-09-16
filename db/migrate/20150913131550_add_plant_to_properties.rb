class AddPlantToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :plant_id, :integer
  end
end
