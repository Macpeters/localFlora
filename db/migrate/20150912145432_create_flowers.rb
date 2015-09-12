class CreateFlowers < ActiveRecord::Migration
  def change
    create_table :flowers do |t|
      t.string :colour
      t.integer :num_petals
      t.boolean :clustered
      t.string :flowering_month
    end
  end
end
