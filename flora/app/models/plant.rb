class Plant < ActiveRecord::Base

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
end