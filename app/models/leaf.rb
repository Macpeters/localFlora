class Leaf < ActiveRecord::Base

  def self.arrangements
    return [
      "opposite",
      "alternate",
      "whorled"
    ]
  end

  def self.margins
    return [
      "lobed",
      "serrated",
      "entire"
    ]
  end

  def self.tip_shapes
    return [
      "accute",
      "obtuse",
      "truncated"
    ]
  end

  def self.base_shapes
    return [
      "acuminate",
      "oblique",
      "acute",
      "sagittate",
      "rounded",
      "hastate",
      "cordate",
      "truncate"
    ]
  end

end