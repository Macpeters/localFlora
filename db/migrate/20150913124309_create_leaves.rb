class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.string :arrangement
      t.string :margin
      t.string :colour
      t.string :tip_shape
      t.string :base_shape
    end
  end
end
