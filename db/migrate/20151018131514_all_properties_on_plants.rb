class AllPropertiesOnPlants < ActiveRecord::Migration
  def change
    add_column :plants, :flower_colour, :string
    add_column :plants, :flower_num_petals, :integer
    add_column :plants, :flower_clustered, :boolean
    add_column :plants, :flower_month, :string
    add_column :plants, :flower_image, :string
    add_column :plants, :flower_edible, :boolean
    add_column :plants, :flower_uses, :text
    add_column :plants, :flower_cautions, :text
    add_column :plants, :fruit_colour, :string
    add_column :plants, :fruit_has_pit, :boolean
    add_column :plants, :fruit_diameter, :integer
    add_column :plants, :fruit_month, :string
    add_column :plants, :fruit_image, :string
    add_column :plants, :fruit_edible, :boolean
    add_column :plants, :fruit_uses, :text
    add_column :plants, :fruit_cautions, :text
    add_column :plants, :leaf_arrangement, :string
    add_column :plants, :leaf_margin, :string
    add_column :plants, :leaf_colour, :string
    add_column :plants, :leaf_tip_shap, :string
    add_column :plants, :leaf_base_shape, :string
    add_column :plants, :leaf_image, :string
    add_column :plants, :leaf_edible, :boolean
    add_column :plants, :leaf_uses, :text
    add_column :plants, :leaf_cautions, :text
    add_column :plants, :root_runners, :boolean
    add_column :plants, :root_type, :string
    add_column :plants, :root_image, :string
    add_column :plants, :root_edible, :boolean
    add_column :plants, :root_uses, :text
    add_column :plants, :root_cautions, :text
    add_column :plants, :stalk_shape, :string
    add_column :plants, :stalk_climbing, :boolean
    add_column :plants, :stalk_has_hairs, :boolean
    add_column :plants, :stalk_colour, :string
    add_column :plants, :stalk_image, :string
    add_column :plants, :stalk_edible, :boolean
    add_column :plants, :stalk_uses, :text
    add_column :plants, :stalk_cautions, :text
  end
end
