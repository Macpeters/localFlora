class DropOtherTables < ActiveRecord::Migration
  def change
    drop_table :flowers
    drop_table :roots
    drop_table :stalks
    drop_table :leaves
    drop_table :fruits
  end
end
