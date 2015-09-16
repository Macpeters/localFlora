class AddPropertiesToFlowers < ActiveRecord::Migration
  def change
    add_column :flowers, :image, :string
    add_column :flowers, :edible, :boolean
    add_column :flowers, :uses, :text
    add_column :flowers, :cautions, :text
    add_column :flowers, :plant_id, :integer
  end
end
