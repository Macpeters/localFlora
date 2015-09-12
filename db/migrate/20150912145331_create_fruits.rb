class CreateFruits < ActiveRecord::Migration
  def change
    create_table :fruits do |t|
      t.string :colour
      t.boolean :has_pit
      t.integer :diameter
      t.string :fruiting_month
    end
  end
end
