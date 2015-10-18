class PlantSerializer < ActiveModel::Serializer
  attributes :id, :common_name, :latin_name, 
  :image, :location, :uses, :cautions, :size,
  :flower_colour, :flower_num_petals, 
  :flower_clustered, :flower_month, :flower_image,
  :flower_edible, :flower_uses, :flower_cautions,
  :fruit_colour, :fruit_has_pit, :fruit_diameter, 
  :fruit_month, :fruit_image, :fruit_edible, :fruit_uses,
  :fruit_cautions, :leaf_arrangements, :leaf_margin, 
  :leaf_colour, :leaf_tip_shape, :leaf_base_shape, :leaf_image,
  :leaf_edible, :leaf_uses, :leaf_cautions, :root_runners,
  :root_type, :root_image, :root_edible, :root_uses, :root_cautions,
  :stalk_shape, :stalk_climbing, :stalk_has_hairs, :stalk_colour,
  :stalk_image, :stalk_edible, :stalk_uses, :stalk_cautions
end