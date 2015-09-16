class RemoveProperties < ActiveRecord::Migration
  def change
    drop_table :properties
  end
end
