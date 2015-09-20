class PlantSerializer < ActiveModel::Serializer
  attributes :id, :common_name, :latin_name, 
  :image, :location, :uses, :cautions, :size
end