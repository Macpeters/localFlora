class Root < ActiveRecord::Base

  def self.root_types
    return [
      "taproot",
      "fibrous"
    ]
  end

end