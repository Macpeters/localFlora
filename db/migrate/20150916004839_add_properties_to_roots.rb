class AddPropertiesToRoots < ActiveRecord::Migration
  def change
    add_column :roots, :image, :string
    add_column :roots, :edible, :boolean
    add_column :roots, :uses, :text
    add_column :roots, :cautions, :text
    add_column :roots, :plant_id, :integer
  end
end
