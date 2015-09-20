class Plant < ActiveRecord::Base

  has_one :flower
  has_one :fruit
  has_one :leaf
  has_one :root
  has_one :stalk

  accepts_nested_attributes_for :flower
  accepts_nested_attributes_for :fruit
  accepts_nested_attributes_for :leaf
  accepts_nested_attributes_for :root
  accepts_nested_attributes_for :stalk


  def locations
    return [
      'wetlands',
      'meadow',
      'shady_hill',
      'entrance',
      'sunny hill',
      'lawn'
      ]
  end

  def sizes 
    return [
      'tree',
      'shrub',
      'plant',
      'groundcover'
    ]
  end
end