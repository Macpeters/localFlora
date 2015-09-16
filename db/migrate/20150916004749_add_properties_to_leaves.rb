class AddPropertiesToLeaves < ActiveRecord::Migration
  def change
    add_column :leaves, :image, :string
    add_column :leaves, :edible, :boolean
    add_column :leaves, :uses, :text
    add_column :leaves, :cautions, :text
    add_column :leaves, :plant_id, :integer
  end
end
