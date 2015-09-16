class AddPropertiesToFruits < ActiveRecord::Migration
  def change
    add_column :fruits, :image, :string
    add_column :fruits, :edible, :boolean
    add_column :fruits, :uses, :text
    add_column :fruits, :cautions, :text
    add_column :fruits, :plant_id, :integer
  end
end
