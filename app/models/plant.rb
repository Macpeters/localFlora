class Plant < ActiveRecord::Base

  def self.locations
    return [
      "", "wetlands", "meadow", "shady_hill",
      "entrance", "sunny hill", "lawn"
      ]
  end

  def self.sizes 
    return [
      "", "tree", "shrub", "houseplant", 
      "groundcover"
    ]
  end

  def self.months
    return [
      "", "Jan", "Feb", "Mar", "Apr",
      "May", "Jun", "July", "Aug",
      "Sept", "Oct", "Nov", "Dec"
    ]
  end

  def self.colours
    return [
      "", "Red", "Yellow", "Pink", "Green",  
      "Purple", "Orange", "Blue",  "Black", 
       "White", "Grey",  "Brown"
    ]
  end


# STALKS

  def self.shapes 
    return [ "round","square", "flat" ]
  end


# ROOTS

  def self.root_types
    return [
      "taproot", "fibrous"
    ]
  end


# LEAVES

  def self.arrangements
    return [
      "",  "opposite", "alternate", "whorled"
    ]
  end

  def self.margins
    return [ "",  "lobed", "serrated",  "entire"
    ]
  end

  def self.tip_shapes
    return [
      "",  "accute", "obtuse",  "truncated"
    ]
  end

  def self.base_shapes
    return [
      "", "acuminate", "oblique", "acute", 
      "sagittate", "rounded", "hastate",
       "cordate", "truncate"
    ]
  end
end