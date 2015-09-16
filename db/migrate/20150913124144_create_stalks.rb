class CreateStalks < ActiveRecord::Migration
  def change
    create_table :stalks do |t|
      t.string :shape
      t.boolean :climbing
      t.boolean :has_hairs
      t.string :colour
    end
  end
end
