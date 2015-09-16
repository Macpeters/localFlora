class Plant < ActiveRecord::Base

  has_one :flower
  has_one :fruit
  has_one :leaf
  has_one :root
  has_one :stalk


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