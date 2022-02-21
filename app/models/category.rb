class Category < ApplicationRecord
  # Direct associations

  has_many   :items,
             :class_name => "Listing",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    item_id
  end

end
