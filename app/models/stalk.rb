class Stalk < ActiveRecord::Base

  def self.shapes 
    return [ "round","square", "flat" ]
  end

end