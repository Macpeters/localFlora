class Stalk < ActiveRecord::Base

  def shapes 
    return [
      "round",
      "square",
      "flat"
    ]
  end

end