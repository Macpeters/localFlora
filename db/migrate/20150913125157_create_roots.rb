class CreateRoots < ActiveRecord::Migration
  def change
    create_table :roots do |t|
      t.boolean :runners
      t.string :root_type
    end
  end
end
