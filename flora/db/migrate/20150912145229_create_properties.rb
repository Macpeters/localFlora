class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :type
      t.string :image
      t.boolean :edible
      t.text :uses
    end
  end
end
