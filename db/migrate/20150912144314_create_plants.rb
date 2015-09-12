class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :common_name
      t.string :latin_name
      t.string :image
      t.string :location
      t.text :uses
      t.integer :height
      t.integer :width
    end
  end
end
