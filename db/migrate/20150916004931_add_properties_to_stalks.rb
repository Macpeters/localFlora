class AddPropertiesToStalks < ActiveRecord::Migration
  def change
    add_column :stalks, :image, :string
    add_column :stalks, :edible, :boolean
    add_column :stalks, :uses, :text
    add_column :stalks, :cautions, :text
    add_column :stalks, :plant_id, :integer
  end
end
