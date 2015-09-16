class AddCautionsToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :cautions, :text
    remove_column :plants, :height, :integer
    remove_column :plants, :width, :integer
    add_column :plants, :size, :string
  end
end
