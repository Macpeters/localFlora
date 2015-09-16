class Leaf < ActiveRecord::Base

  def arrangements
    return [
      "opposite",
      "alternate",
      "whorled"
    ]
  end

  def margins
    return [
      "lobed",
      "serrated",
      "entire"
    ]
  end

  def tip_shapes
    return [
      "accute",
      "obtuse",
      "truncated"
    ]
  end

  def base_shapes
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